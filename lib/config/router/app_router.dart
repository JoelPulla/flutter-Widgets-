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
    GoRoute(
      path: '/animated_screen',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/app_tutorial',
      name: AppTutorial.name,
      builder: (context, state) => const AppTutorial(),
    ),
    GoRoute(
      path: '/infinite_scroll',
      name: InfiniteScroll.name,
      builder: (context, satet) => const InfiniteScroll(),
    ),
    GoRoute(
      path: '/progres_screen',
      name: ProgresScren.name,
      builder: (contex, state) => const ProgresScren(),
    ),
    GoRoute(
      path: '/snackbar_screen',
      name: SnackbarScreen.name,
      builder: (context, state) => const  SnackbarScreen(),
    ),
    GoRoute(
        path: '/ui_controls_screen',
        name: UiConttrolsScreen.name,
        builder: (context, state) => const UiConttrolsScreen()),
  ],
);
