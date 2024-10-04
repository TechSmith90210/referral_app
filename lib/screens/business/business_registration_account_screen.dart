import 'package:flutter/material.dart';
import 'package:referral_app/screens/business/business_registration_details_screen.dart';

class BusinessRegistrationAccountScreen extends StatelessWidget {
  const BusinessRegistrationAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register Business',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Details',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Form(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter Email',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), isDense: true),
                    keyboardType: TextInputType.emailAddress,
                  )
                ],
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Form(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter Password',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), isDense: true),
                    keyboardType: TextInputType.visiblePassword,
                  )
                ],
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Form(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Repeat Password',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), isDense: true),
                    keyboardType: TextInputType.visiblePassword,
                  )
                ],
              ),
            )),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              BusinessRegistrationDetailsScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  minimumSize: const Size(335, 60),
                ),
                child: const Text("Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
