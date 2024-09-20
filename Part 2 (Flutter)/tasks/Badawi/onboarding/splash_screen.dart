// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _splashTime();
  }

  Future<void> _splashTime() async {
    await Future.delayed(const Duration(seconds: 3));

    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => const OnboardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Text(
          'Trackify',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
