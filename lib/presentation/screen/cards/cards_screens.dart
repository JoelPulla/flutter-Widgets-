import 'package:flutter/material.dart';
// list elevation

final cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'lavel': 'Elevation 0'},
  {'elevation': 1.0, 'lavel': 'Elevation 1'},
  {'elevation': 2.0, 'lavel': 'Elevation 2'},
  {'elevation': 3.0, 'lavel': 'Elevation 3'},
  {'elevation': 4.0, 'lavel': 'Elevation 4'},
  {'elevation': 5.0, 'lavel': 'Elevation 5'},
];

class CardsScreens extends StatelessWidget {
  static const String nameGoRoute = 'CardsScren';

  const CardsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("tarjetas Ui"),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) => _CardType1(
              elevation: card['elevation'],
              lavel: card['lavel'],
            ),
          ),
          ...cards.map(
            (card) => _CardType2(
              elevation: card['elevation'],
              lavel: card['lavel'],
            ),
          ),
          ...cards.map(
            (card) => _CardType3(
              elevation: card['elevation'],
              lavel: card['lavel'],
            ),
          ),
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final double elevation;
  final String lavel;

  const _CardType1({
    required this.elevation,
    required this.lavel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(lavel),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final double elevation;
  final String lavel;

  const _CardType2({
    required this.elevation,
    required this.lavel,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      borderOnForeground: true,
      margin: const EdgeInsets.all(10),
      color: colors.onSurfaceVariant,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(lavel),
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {
  final double elevation;
  final String lavel;

  const _CardType3({
    required this.elevation,
    required this.lavel,
  });

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        clipBehavior: Clip.hardEdge,
        borderOnForeground: true,
        elevation: elevation,
        child: Stack(
          children: [
            //Backgound Image
            Image.network(
              'https://plus.unsplash.com/premium_photo-1718204434029-d710f571cf14?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              fit: BoxFit.cover,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.red,
                  ],
                ),
              ),
            ),

            // Icons
          ],
        ),
      ),
    );
  }
}
