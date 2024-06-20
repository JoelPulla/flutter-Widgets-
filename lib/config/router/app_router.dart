import 'package:go_router/go_router.dart';

import '../../presentation/screen/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.nameGoRoute,
      builder: (contex, satate) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.nameGoRoute,
      builder: (contex, satate) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreens.nameGoRoute,
      builder: (contex, satate) => const CardsScreens(),
    ),
  ],
);
