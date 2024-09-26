import 'package:flutter/material.dart';
import 'package:referral_app/screens/user_profile_setup.dart';

class UserOtpVerificationScreen extends StatelessWidget {
  const UserOtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              const Text("OTP Verification",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20,
              ),
              const Text(
                "Enter the verification code we just sent on your phone number.",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(
                height: 55,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '0',
                          counterText: '',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '0',
                          counterText: '',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '0',
                          counterText: '',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '0',
                          counterText: '',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 55,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    try {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UserProfileSetup()));
                    } catch (e) {
                      // ignore: avoid_print
                      print(e);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    minimumSize: Size(400, 50),
                  ),
                  child: const Text("Verify",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: const Text(
                "Resend OTP in 23s",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: const Text(
                "Resend",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
