import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../home.dart';
import 'view_page.dart';
import 'onboarding_model.dart';

class OnboardingPage extends StatelessWidget {
  final PageController _pageController = PageController();

  final List<OnboardingModel> pages = [
    OnboardingModel(
      image: 'assets/images/onboarding 1.png',
      title: 'Focus on the work that matters',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding 2.png',
      title: 'Stay organized and efficient',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding 3.png',
      title: 'Plan, manage, and track tasks',
    ),
  ];

  OnboardingPage({super.key});

  Future<void> _completeOnboarding(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstLaunch', false);
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const HomePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 16),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: pages.length,
                  effect: const WormEffect(
                    activeDotColor: Colors.black,
                    dotColor: Colors.grey,
                    dotHeight: 6,
                    dotWidth: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: TextButton(
                  onPressed: () {
                    _completeOnboarding(context);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 35),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                ViewPage(
                  data: pages[0],
                  continueAction: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  },
                ),
                ViewPage(
                  data: pages[1],
                  continueAction: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  },
                ),
                ViewPage(
                  data: pages[2],
                  continueAction: () {
                    _completeOnboarding(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
