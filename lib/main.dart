import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

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
      home: const SplashScreen(),
    );
  }
}
