import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:referral_app/screens/user_login.dart';

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
                        Container(
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
                  children: [
                    Container(
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
                    Container(
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
                    child: Center(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          return value!.isEmpty ? "Please enter email" : null;
                        },
                      )
                    ],
                  ),
                )),
                const SizedBox(
                  height: 20,
                ),
                const Text("Enter password"),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      minimumSize: const Size(400, 50),
                    ),
                    child: const Text("Submit",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
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
