import 'package:flutter/material.dart';

class ProgresScren extends StatelessWidget {
  static const name = 'progres_screen';
  const ProgresScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Progres Idicatior'),
      ),
      body: const Column(
        children: [
          _ProgresView(),
          Text('Circular y linear controlado'),
          _ControllerProgresIndicatior(),
        ],
      ),
    );
  }
}

class _ProgresView extends StatelessWidget {
  const _ProgresView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Center(
      child: Column(
        children: [
          const Text('Circular Progres Idicatior'),
          const SizedBox(height: 30),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.white30,
            color: colors.primary,
          )
        ],
      ),
    );
  }
}

class _ControllerProgresIndicatior extends StatelessWidget {
  const _ControllerProgresIndicatior();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progresValue = snapshot.data ?? 0;

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progresValue,
                  color: colors.primary,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: LinearProgressIndicator(
                    value: progresValue,
                    color: colors.error,
                  ),
                )
              ],
            ),
          );
        });
  }
}
