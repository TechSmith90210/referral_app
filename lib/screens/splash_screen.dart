import 'package:flutter/material.dart';
import 'package:referral_app/widgets/fadeinTextWidget.dart';
import 'getStarted_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigate to the GetStartedScreen after 3 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const GetStartedScreen(),
        ),
      );
    });

    return Scaffold(
      body: Center(
        child: FadeInText(
          text: "RefBuddy",
        ),
      ),
    );
  }
}
