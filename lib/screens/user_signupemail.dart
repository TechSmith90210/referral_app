import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:referral_app/screens/user_emailverification.dart';
import 'package:referral_app/screens/user_login.dart';

final _signupEmailFormKey = GlobalKey<FormState>();

class UserSignUpEmailScreen extends StatelessWidget {
  const UserSignUpEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(400, 50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset('assets/google.png')),
                        Text(
                          "Sign Up with Google",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 130,
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Or"),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 130,
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("Enter your email"),
                const SizedBox(
                  height: 8,
                ),
                Form(
                  key: _signupEmailFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Email';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Enter password"),
                      const SizedBox(
                        height: 8,
                      ),
                      Center(
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return 'Enter password';
                            } else {
                              return null;
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(child: SubmitButton()),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                          children: [
                        const TextSpan(text: "Already have an account?"),
                        TextSpan(
                            text: "Login",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => UserLogin(),
                                ));
                              })
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Submit Button
class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_signupEmailFormKey.currentState!.validate()) {
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
      child: const Text("Submit", style: TextStyle(color: Colors.white)),
    );
  }
}
