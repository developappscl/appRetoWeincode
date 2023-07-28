import 'package:go_router/go_router.dart';
import 'package:retoweincode01/widgets/app3/widgets/rooms_list_screen.dart';

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
    builder: (context, state) => const App2Screen(),
  ),
  GoRoute(
    path: '/app3',
    builder: (context, state) => const App3Screen(),
  ),
  GoRoute(
    path: '/rooms',
    builder: (context, state) => const RoomListScreen(),
  )
]);
