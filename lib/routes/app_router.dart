import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse/core/services/service_locator.dart';
import 'package:warehouse/features/categories/cubits/get_categories_cubit/get_categories_cubit.dart';
import 'package:warehouse/features/donations/cubits/get_donations_cubit/get_donations_cubit.dart';
import 'package:warehouse/features/login/cubits/login_cubit/login_cubit.dart';
import 'package:warehouse/features/navigator/presentation/navigate_screen.dart';
import 'package:warehouse/layouts/main_layout.dart';
import 'unknown_page.dart';
import 'navigator_observer.dart';
import 'package:warehouse/features/donations/presentation/donations_screen.dart';
import 'package:warehouse/features/categories/presentation/categories_screen.dart';
import 'package:warehouse/features/login/presentation/login_screen.dart';
import 'app_routes.dart';

// You can use a key for the navigator if needed, e.g., for showing dialogs.
// final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.login,
    observers: [MyNavigatorObserver()],
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: 'splash',
        path: AppRoutes.splash,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text("Splash Screen"))),
      ),
      GoRoute(
        name: 'login',
        path: AppRoutes.login,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<LoginCubit>(),
          child: MainLayout(body: const LoginScreen()),
        ),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,

        builder: (context, state, child) {
          return NavigateScreen(child: child);
        },
        routes: [
          GoRoute(
            name: 'categories',
            path: AppRoutes.categories,
            builder: (context, state) => BlocProvider(
              create: (context) => sl<GetCategoriesCubit>()..getCategories(),
              child: const CategoriesScreen(),
            ),
          ),
          GoRoute(
            name: 'donations',
            path: AppRoutes.donations,
            builder: (context, state) => BlocProvider(
              create: (context) => sl<GetDonationsCubit>()..initState(),
              child: const DonationsScreen(),
            ),
          ),
        ],
      ),

      //<-- DONT_REMOVE_THIS_LINE_GOROUTES -->
    ],
    errorPageBuilder: (context, state) =>
        MaterialPage(key: state.pageKey, child: const UnknownPage()),
  );
}
