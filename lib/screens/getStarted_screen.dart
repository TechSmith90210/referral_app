import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SVG asset for the splash screen
          Center(
            child: SvgPicture.asset(
              'assets/splashScreenImage.svg',
              height: 400,
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
          ),
          // Content section
          const Text(
            'RefBuddy',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          // Welcome text with rich text styling
          SizedBox(
            width: 250,
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Welcome to ',
                style: TextStyle(color: Colors.grey, fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                    text: 'RefBuddy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ', Where referrals turn into rewards.',
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          // Get Started button
          ElevatedButton(
            onPressed: () {
              // Add your navigation functionality here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Background color
              foregroundColor: Colors.white, // Text color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Rounded corners
              ),
              minimumSize: const Size(150, 50), // Button size
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(
                color: Colors.white, // Text color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
