import 'package:flutter/material.dart';

class CardsScreens extends StatelessWidget {
  static const String nameGoRoute = 'CardsScren';

  const CardsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("tarjetas Ui"),
      ),
    );
  }
}
