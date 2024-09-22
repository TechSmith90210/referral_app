import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:referral_app/screens/business_login_screen.dart';
import 'package:referral_app/screens/business_registration_details_screen.dart';

class BusinessGetStartedScreen extends StatelessWidget {
  const BusinessGetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            'assets/choose_business.svg',
            height: 300,
            alignment: Alignment.center,
          ),
          Text(
            'Hello!',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 250,
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Welcome to ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'RefBuddy',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: ', Where referrals turn into rewards.',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BusinessLoginScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(150, 50),
                ),
                child: Text(
                  'Login',
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            BusinessRegistrationDetailsScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Colors.black, width: 0.6)),
                  minimumSize: const Size(150, 50),
                ),
                child: Text(
                  'Register',
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'or via social media',
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 23,
          ),
          SizedBox(
            height: 35,
            width: 155,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(30)),
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(30)),
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
