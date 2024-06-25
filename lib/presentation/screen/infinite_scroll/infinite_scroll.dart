import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScroll extends StatefulWidget {
  static const name = 'infinite_scroll';

  const InfiniteScroll({super.key});

  @override
  State<InfiniteScroll> createState() => _InfiniteScrollState();
}

class _InfiniteScrollState extends State<InfiniteScroll> {
  //creamos esta lista para definir un largo de nuestro listview
  List<int> imagesId = [1, 2, 3, 4, 5];

  //controller del scroll
  final ScrollController scrollController = ScrollController();
  bool isLoding = false;
  bool isMounted = true;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        //load next page
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    isMounted = false;
    super.dispose();
  }

  Future loadNextPage() async {
    if (isLoding) return;
    isLoding = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));

    addFiveImages();
    isLoding = false;

    if (isMounted) return;
    setState(() {});
  }

  Future<void> onRefresh() async {
    isLoding = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));
    if (!isMounted) return;

    final lastId = imagesId.last;

    imagesId.clear();
    imagesId.add(lastId + 1);
    addFiveImages();

    setState(() {});
  }

  //funcion
  void addFiveImages() {
    final lastId = imagesId.last;
    imagesId.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          edgeOffset: 15,
          strokeWidth: 2,
          onRefresh: onRefresh,
          child: ListView.builder(
            controller: scrollController,
            itemCount: imagesId.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                fit: BoxFit.cover,
                height: 300,
                image: NetworkImage(
                    'https://picsum.photos/id/${imagesId[index]}/200/300'),
                placeholder: const AssetImage('assets/images/jar-loading.gif'),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.pop(),
          child: isLoding
              ? SpinPerfect(
                  infinite: true,
                  child: const Icon(Icons.refresh),
                )
              : FadeIn(child: const Icon(Icons.arrow_back))),
    );
  }
}
