import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/custtom_button.dart';

class ButtonsScreen extends StatelessWidget {
  static const String nameGoRoute = 'ButtonsScreen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Botones UI"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back)),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevation button'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevation Disale'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.alarm),
              label: const Text('Elevated Button'),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Filled Button'),
            ),
            FilledButton.tonal(
              onPressed: () {},
              child: const Text('Filled tonal'),
            ),
            FilledButton.tonalIcon(
              onPressed: () {},
              label: const Text('Filled Icon'),
              icon: const Icon(Icons.flutter_dash),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outline Button'),
            ),
            OutlinedButton.icon(
              onPressed: null,
              label: const Text('Outline Disabled'),
              icon: const Icon(Icons.read_more),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('TextButton'),
            ),

            //TODO: CUSTOM BUTTON

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.radar_sharp),
            ),
            const CusttomButton(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.accessible_sharp),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(colors.primary),
                  iconColor: const WidgetStatePropertyAll(Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
