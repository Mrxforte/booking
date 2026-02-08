import 'package:booking/app/constants/app_icons.dart';
import 'package:booking/app/constants/app_strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // splash screen with auth navigate
    return Scaffold(
      // logo and text
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(AppIcons.logo, size: 100),
            SizedBox(height: 20),
            // text
            Text(
              AppStrings.appName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
