import 'package:booking/app/constants/app_strings.dart';
import 'package:booking/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      home: const SplashScreen(),
    );
  }
}
