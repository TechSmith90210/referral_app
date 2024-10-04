import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:referral_app/screens/users/user_emailverification.dart';
import 'package:referral_app/screens/users/user_login.dart';
import 'package:referral_app/screens/users/user_signupemail.dart';

final _loginformKey = GlobalKey<FormState>();

class UserLoginEmail extends StatelessWidget {
  const UserLoginEmail({super.key});

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
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("Enter Email"),
              const SizedBox(
                height: 8,
              ),
              Form(
                  key: _loginformKey,
                  child: Center(
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter email';
                            } else {
                              return null;
                            }
                          },
                        )
                      ],
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_loginformKey.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UserEmailVerificationScreen()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    minimumSize: const Size(400, 50),
                  ),
                  child: const Text("Login",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Center(
                  child: Text(
                "Or via social media",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              )),
              const SizedBox(
                height: 25,
              ),
              Align(
                alignment: FractionalOffset.topCenter,
                child: SizedBox(
                  width: 170,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 29,
                          height: 29,
                          child: InkWell(
                              onTap: () {},
                              child: Image.asset('assets/instagram.jpeg'))),
                      SizedBox(
                          width: 29,
                          height: 29,
                          child: InkWell(
                              onTap: () {},
                              child: Image.asset('assets/xnew.png'))),
                      SizedBox(
                          width: 29,
                          height: 29,
                          child: InkWell(
                              onTap: () {},
                              child: Image.asset('assets/Facebook.png'))),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  width: 500,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const UserLogin(),
                      ));
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black12),
                    child: const Text(
                      "Login using Phone Number",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                        children: [
                      const TextSpan(text: "Don't have an account?"),
                      TextSpan(
                          text: "Signup",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => UserSignUpEmailScreen(),
                              ));
                            })
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
