import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/ui/skeletons/skeleton_box.dart';
import '../features/ai_assistant/presentation/screens/ai_assistant_screen.dart';
import '../features/appointments/presentation/screens/appointments_screen.dart';
import '../features/auth/presentation/screens/login_screen.dart';
import '../features/auth/presentation/screens/onboarding_screen.dart';
import '../features/auth/presentation/screens/otp_screen.dart';
import '../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../features/doctors/presentation/screens/doctors_screen.dart';
import '../features/emergency/presentation/screens/emergency_screen.dart';
import '../features/profile/presentation/screens/profile_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) => GoRouter(initialLocation: '/splash', routes: [
      GoRoute(path: '/splash', builder: (_, __) => const SplashScreen()),
      GoRoute(path: '/onboarding', builder: (_, __) => const OnboardingScreen()),
      GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
      GoRoute(path: '/otp', builder: (_, __) => const OtpScreen()),
      GoRoute(path: '/dashboard', builder: (_, __) => const DashboardScreen()),
      GoRoute(path: '/doctors', builder: (_, __) => const DoctorsScreen()),
      GoRoute(path: '/appointments', builder: (_, __) => const AppointmentsScreen()),
      GoRoute(path: '/ai', builder: (_, __) => const AiAssistantScreen()),
      GoRoute(path: '/emergency', builder: (_, __) => const EmergencyScreen()),
      GoRoute(path: '/profile', builder: (_, __) => const ProfileScreen()),
    ]));

class SplashScreen extends StatefulWidget { const SplashScreen({super.key}); @override State<SplashScreen> createState() => _SplashScreenState(); }
class _SplashScreenState extends State<SplashScreen> {
  @override void initState(){ super.initState(); Future.delayed(const Duration(milliseconds: 1500), ()=>context.go('/onboarding')); }
  @override Widget build(BuildContext context)=> const Scaffold(body: Center(child: SkeletonBox(height: 18, width: 140)));
}
