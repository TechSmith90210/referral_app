import 'package:flutter/material.dart';
import 'package:referral_app/screens/common/splash_screen.dart';

void main() {
  runApp(const ReferralApp());
}

class ReferralApp extends StatelessWidget {
  const ReferralApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RefBuddy',
      theme: ThemeData(
        useMaterial3: true,
      ),
      // for developing onboarding & auth
      home: const SplashScreen(),

      // for developing users/buyers screens
      // home:

      // for developing business main screens
      // home: NavigationWrapper(),
    );
  }
}
