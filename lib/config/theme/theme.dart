import 'package:flutter/material.dart';

// lista de colores
const colorslist = <Color>[
  Colors.blue,
  Colors.red,
  Colors.black,
  Colors.amber,
  Colors.green
];

// clase
class AppTheme {
  // variable con el selecionador del color
  final int selectedColor;

  //constructor para recivir el dato
  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor < 0, 'Selected color must be greather the 0');

  // clase implisita con las propiedadtes del thedata
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorslist[selectedColor],
      );
}
