import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Text(
          'Onboarding Screen',
          style: TextStyle(
            fontSize: 40
          ),
        ),
      ),
    );
  }
}