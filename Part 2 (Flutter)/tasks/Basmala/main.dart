import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      FlutterNativeSplash.remove();
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return const TestView();
        },
      ));
    });

    return const Scaffold(
      body: Center(
        child: Text(
          'Hello',
          style: TextStyle(
            fontSize: 60,
            color: Colors.black,
            fontWeight: FontWeight.bold,           
          ),
        ),
      ),
    );
  }
}

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Complete Task',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}