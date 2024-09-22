import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';
import 'onboarding/onboarding_page.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final prefs = await SharedPreferences.getInstance();
//   final isFirstLaunch = prefs.getBool('isFirstLaunch') ?? true;

//   runApp(MyApp(isFirstLaunch: isFirstLaunch));
// }

// class MyApp extends StatelessWidget {
//   final bool isFirstLaunch;

//   const MyApp({super.key, required this.isFirstLaunch});
  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       home: isFirstLaunch ? OnboardingPage() : const HomePage(),
//     );
//   }
// }



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isFirstLaunch = prefs.getBool('isFirstLaunch') ?? true;

  runApp(DevicePreview(
    builder: (context) => MyApp(isFirstLaunch: isFirstLaunch),
    enabled: true,
  ));
}

class MyApp extends StatelessWidget {
  final bool isFirstLaunch;

  const MyApp({super.key, required this.isFirstLaunch});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: isFirstLaunch ? OnboardingPage() : const HomePage(),
    );
  }
}
