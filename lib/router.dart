import 'package:co2_tracker/navbar.dart';
import 'package:co2_tracker/screens/catalogue_screen.dart';
import 'package:co2_tracker/screens/community_screen.dart';
import 'package:co2_tracker/screens/machine_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

/// The route configuration.
final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return NavBar(body: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const CatalogueScreen(),
          routes: <RouteBase>[
            GoRoute(
              path: 'machine/:machine',
              builder: (context, state) => MachineScreen(
                  machine: state.pathParameters["machine"].toString()),
            ),
            GoRoute(
              path: 'community',
              builder: (context, state) => CommunityScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
