import 'package:flutter/material.dart';

// constructores
class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

// variable de datos
const appMenuItems = <MenuItem>[
  MenuItem(
    title: '/buttons',
    subtitle: 'varios',
    link: 'sss',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'tarjetas',
    subtitle: 'contenedor estilizado ',
    link: '/card',
    icon: Icons.credit_card,
  ),
];
