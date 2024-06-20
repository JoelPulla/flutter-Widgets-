import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/theme.dart';
import 'package:widgets_app/presentation/screen/cards/cards_screens.dart';
import 'package:widgets_app/presentation/screen/home/home_screen.dart';

import 'presentation/screen/buttons/buttons_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).getTheme(),
      initialRoute: 'homeScreen',
      routes: {
        'homeScreen': (context) => const HomeScreen(),
        '/buttons': (context) => const ButtonsScreen(),
        '/cards': (context) => const CardsScreens(),
      },
    );
  }
}
