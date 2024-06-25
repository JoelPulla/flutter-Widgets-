import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const String image1 =
    'https://plus.unsplash.com/premium_photo-1718204437243-a644894df78d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
const String image2 =
    'https://www.freepik.es/vector-gratis/concepto-donacion-ropa-dibujada_12277182.htm?query=conciencia%20sobre%20personas%20sin%20hogar#from_view=detail_alsolike';
const String image3 =
    'https://img.freepik.com/vector-gratis/ilustracion-dibujos-animados-dia-internacional-familias_23-2148896324.jpg?t=st=1719266132~exp=1719269732~hmac=253c3cba5164e008af165339d02bce216cf1e5554ee05348e82083bcf86a61aa&w=740';

class SlidesInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlidesInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlidesInfo>[
  SlidesInfo(
      'Dona Ropa 1',
      'Aliquip culpa aliquip sint excepteur enim quis. Laborum et ea Lorem id. Occaecat et nostrud ex labore incididunt sunt consequat esse occaecat voluptate est do commodo proident. Id amet cupidatat incididunt fugiat minim cillum eu commodo mollit Lorem.',
      image1),
  SlidesInfo(
      'Recive Ropa 2 ',
      'Aute duis magna quis aute cillum labore ea duis et minim sunt veniam ex excepteur. Exercitation non enim magna velit ipsum ea nulla pariatur occaecat. Enim et deserunt minim laboris do ut ullamco est mollit cillum. Do reprehenderit adipisicing adipisicing et esse et commodo ipsum id pariatur aliqua incididunt duis adipisicing. Pariatur culpa ad sunt sunt laboris Lorem culpa aute commodo consequat adipisicing incididunt. Cillum sit culpa anim aute voluptate et culpa irure sunt labore dolore veniam. Ut eiusmod consequat dolore enim aliquip.',
      image2),
  SlidesInfo(
      'Somos Familia 3',
      'Est pariatur consectetur anim minim ad duis laboris esse ea culpa. Officia cillum reprehenderit consectetur sunt nulla nostrud ad amet aliquip occaecat. Lorem non Lorem sunt deserunt eu ad laboris ullamco. Est magna ea commodo sunt nisi mollit cupidatat sint. Esse est ex ullamco aliquip duis exercitation sit sint Lorem laboris enim in. Mollit consequat proident dolore cillum commodo minim ea proident magna minim esse officia do nostrud.',
      image3),
];

class AppTutorial extends StatefulWidget {
  // definimos nombre de la ruta
  static const name = 'app_tutorial';

  const AppTutorial({super.key});

  @override
  State<AppTutorial> createState() => _AppTutorialState();
}

class _AppTutorialState extends State<AppTutorial> {
  final PageController pageViewController = PageController();
  bool enReach = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(
      () {
        final page = pageViewController.page ?? 0;
        if (!enReach && page >= (slides.length - 1.5)) {
          setState(() {
            enReach = true;
          });
        }
      },
    );
  }

  // para romper si no lo necesitamos
  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            // verificar las animacion es que estan en el curso
            children: slides
                .map(
                  (slideData) => _Slide(
                      title: slideData.title,
                      caption: slideData.caption,
                      imageUrl: slideData.imageUrl),
                )
                .toList(),
          ),
          Positioned(
            top: 30,
            right: 20,
            child: TextButton(
              child: const Text('Skip!'),
              onPressed: () {
                //otras funciones
                context.pop();
              },
            ),
          ),

          // mostrar el boton de finalizar si estamo sen la ultima imagen
          enReach
              ? Positioned(
                  bottom: 10,
                  right: 10,
                  child: FadeInRight(
                    from: 15,
                    duration: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Empezar a usar'),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: NetworkImage(imageUrl),
          ),
          const SizedBox(height: 30),
          Text(
            title,
            style: textStyle.titleLarge,
          ),
          const SizedBox(height: 30),
          Text(
            caption,
            style: textStyle.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
