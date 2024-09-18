import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:referral_app/screens/user_login_email';
import 'package:referral_app/screens/user_signupScreen.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({super.key});

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
              const Text("Enter your phone number"),
              const SizedBox(
                height: 8,
              ),
              Form(
                  child: Center(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        return value!.isEmpty
                            ? "Please enter phone number"
                            : null;
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
                  onPressed: () {},
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
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 30,
                          height: 30,
                          child: InkWell(
                              onTap: () {},
                              child: Image.asset('assets/instagram.jpeg'))),
                      SizedBox(
                          width: 30,
                          height: 30,
                          child: InkWell(
                              onTap: () {},
                              child: Image.asset('assets/xnew.png'))),
                      SizedBox(
                          width: 30,
                          height: 30,
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
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UserLoginEmail(),
                      ));
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black12),
                    child: const Text(
                      "Login using Email",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
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
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UserSignUpScreen(),
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
