import 'package:flutter/material.dart';

import '../../../config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
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
        final itemData = appMenuItems[index];

        return _CustomListTitle(todos: itemData);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.todos,
  });

  final MenuItem todos;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(todos.icon, color: colors.primary),
      title: Text(todos.title),
      subtitle: Text(todos.subtitle),
      trailing: Icon(Icons.arrow_forward, color: colors.primary),
      onTap: () {},
    );
  }
}
