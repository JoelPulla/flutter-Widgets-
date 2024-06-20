import 'package:go_router/go_router.dart';

import '../../presentation/screen/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (contex, satate) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (contex, satate) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (contex, satate) => const CardsScreens(),
    ),
  ],
);
