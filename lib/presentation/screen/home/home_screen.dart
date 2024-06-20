import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  //Gorute
  static const String nameGoRoute = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuData = appMenuItems[index];

        return _CustomListTitle(menuData: menuData);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuData,
  });

  final MenuItem menuData;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuData.icon, color: colors.primary),
      title: Text(menuData.title),
      subtitle: Text(menuData.subtitle),
      trailing: Icon(Icons.arrow_forward, color: colors.primary),
      onTap: () {
        // Navigator.pushNamed(context, menuData.link);

        context.push(menuData.link);
      },
    );
  }
}
