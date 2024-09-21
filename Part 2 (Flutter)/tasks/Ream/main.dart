// Author: Reem Ezzat
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'splash_screen.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
    enabled: true,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const SplashScreen(),
    );
  }
}
