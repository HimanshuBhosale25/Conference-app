import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'theme.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/agenda_screen.dart';
import 'screens/timeline_screen.dart';
import 'screens/notification_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/speakers_screen.dart';
import 'screens/teams_screen.dart';
import 'screens/polls_screen.dart';

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/',            builder: (context, state) => const SplashScreen()),
    GoRoute(path: '/login',       builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/home',        builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/agenda',      builder: (context, state) => const AgendaScreen()),
    GoRoute(path: '/timeline',    builder: (context, state) => const TimelineScreen()),
    GoRoute(path: '/notifications', builder: (context, state) => const NotificationScreen()),
    GoRoute(path: '/profile',     builder: (context, state) => const ProfileScreen()),
    GoRoute(path: '/speakers',    builder: (context, state) => const SpeakersScreen()),
    GoRoute(path: '/teams',       builder: (context, state) => const TeamsScreen()),
    GoRoute(path: '/polls',       builder: (context, state) => const PollsScreen()),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ICDMAI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      routerConfig: _router,
    );
  }
}
