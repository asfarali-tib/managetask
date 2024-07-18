import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:managetask/view/screens/authentication/login/login_view.dart';
import 'package:managetask/view/screens/homeScreen/home_screen_view.dart';
import 'package:managetask/view/screens/profileScreen/ProfileScreenView.dart';
import 'package:managetask/view/screens/splashScreen/splash_screen_view.dart';

enum AppRoute {
  splashScreen,
  loginScreen,
  homeScreen,
  profileScreen
}

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: AppRoute.splashScreen.name,
      path: '/',
      builder: (context, state) => const SplashScreenView(),
    ),
    GoRoute(
      name: AppRoute.loginScreen.name,
      path: '/loginScreen',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      name: AppRoute.homeScreen.name,
      path: '/homeScreen',
      builder: (context, state) => const HomeScreenView(),
    ),
    GoRoute(
      name: AppRoute.profileScreen.name,
      path: '/profileScreen',
      builder: (context, state) => const ProfileScreenView(),
    ),
  ],
  errorBuilder: (context, state) {
    return const Scaffold(
      body: Center(
        child: Text('Error'),
      ),
    );
  },
);