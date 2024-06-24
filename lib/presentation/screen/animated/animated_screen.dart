import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  // definimos nombre de la ruta
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 45;
  Color color = Colors.indigo;
  double borderRadius = 10.0;

  // Void
  void changeShape() {
    final random = Random();

    width = random.nextInt(300) + 50;
    height = random.nextInt(400) + 20;
    borderRadius = random.nextInt(100) + 10;
    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Animated Container '),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          //animated
          curve: Curves.ease,

          // pra evitar si cnabiamos la aimaciones algun efecto me de un numero negativo y se rompa la app
          height: height <= 0 ? 0 : width,
          width: width <= 0 ? 0 : height,

          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
