import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market_app/presentation/home/home_view.dart';
import 'package:market_app/presentation/user/user_view.dart';

class AppRoutes {
  static String home = '/';
  static String user = '/user';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: user,
            builder: (BuildContext context, GoRouterState state) {
              return const UserView();
            },
          ),
        ],
      ),
    ],
  );
}
