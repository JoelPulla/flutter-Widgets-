import 'package:flutter/material.dart';

class CusttomButton extends StatelessWidget {
  const CusttomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: colors.primary,
      child: InkWell(
        onTap: () {},
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Hola Mundo'),
        ),
      ),
    );
  }
}
