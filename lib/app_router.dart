import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'layout.dart';
import 'pages/home_page.dart';
import 'pages/explore_page.dart';
import 'pages/settings_page.dart';
import 'pages/profile_page.dart';
import 'models/user.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return LayoutShell(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/home',
            builder: (context, state) => const HomePage(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/explore',
            builder: (context, state) => const ExplorePage(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingsPage(),
            routes: [
              GoRoute(
                path: 'profile',
                builder: (context, state) {
                  final user = state.extra as User;
                  return ProfilePage(user: user);
                },
              ),
            ],
          ),
        ]),
      ],
    ),
  ],
);
