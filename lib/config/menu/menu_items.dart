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
    title: 'Buttoms',
    subtitle: 'tipos de botton',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'tarjetas',
    subtitle: 'contenedor estilizado ',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Stack',
    subtitle: 'Widgets encima de mas widgets ',
    link: '/stacks',
    icon: Icons.list_alt,
  ),
  MenuItem(
    title: 'Animaciones',
    subtitle: 'Widgets de animaciones ',
    link: '/animated_screen',
    icon: Icons.animation,
  ),
  MenuItem(
    title: 'Tutorial intro',
    subtitle: 'animaciones de nuestro inico de app',
    link: '/app_tutorial',
    icon: Icons.tips_and_updates_rounded,
  ),
  MenuItem(
    title: 'Infinite Scroll',
    subtitle: 'Scroll infinito de una pantalla',
    link: '/infinite_scroll',
    icon: Icons.find_replace_outlined,
  ),
  MenuItem(
    title: 'Progres',
    subtitle: 'Barra de progreso en lateral, lineales y circulares',
    link: '/progres_screen',
    icon: Icons.linear_scale_rounded,
  ),
  MenuItem(
    title: 'Snackbar',
    subtitle: 'Indicadores en pantalla',
    link: '/snackbar_screen',
    icon: Icons.backup_rounded,
  ),
  MenuItem(
    title: 'Controles Estilizados',
    subtitle: 'Falta detalle',
    link: '/ui_controls_screen',
    icon: Icons.star,
  ),
];
