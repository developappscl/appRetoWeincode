import 'package:go_router/go_router.dart';

import '../../screens/screens.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/app1',
    builder: (context, state) => const App1Screen(),
  ),
  GoRoute(
    path: '/app2',
    builder: (context, state) => const App1Screen(),
  ),
  GoRoute(
    path: '/app3',
    builder: (context, state) => const App1Screen(),
  ),
  GoRoute(
    path: '/creditos',
    builder: (context, state) => const CreditsScreen(),
  )
]);
