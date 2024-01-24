import 'package:go_router/go_router.dart';
import 'package:screens_ui/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/app-sliver-screen',
      builder: (context, state) => const PokemonScreen(),
    ),
    GoRoute(
      path: '/app-sliver-screen-vid',
      builder: (context, state) => const PokemonScreenVid(),
    ),
    GoRoute(
      path: '/select-images-screen',
      builder: (context, state) => const PokemonScreenVid(),
    ),
  ],
);
