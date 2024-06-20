import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const String nameGoRoute = 'ButtonsScreen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Botones UI"),
      ),
    );
  }
}
