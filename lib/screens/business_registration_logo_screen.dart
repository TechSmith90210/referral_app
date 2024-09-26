import 'package:flutter/material.dart';

class BusinessRegistrationLogoScreen extends StatefulWidget {
  const BusinessRegistrationLogoScreen({super.key});

  @override
  State<BusinessRegistrationLogoScreen> createState() =>
      _BusinessRegistrationLogoScreenState();
}

class _BusinessRegistrationLogoScreenState
    extends State<BusinessRegistrationLogoScreen> {
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
              'Almost Done!',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 23,
              ),
            ),
            Text(
              'Lastly, please upload your business logo to help users easily identify your Business.',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black)),
                child: Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.grey[500],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.attach_file),
                label: const Text('Upload Image'),
                iconAlignment: IconAlignment.end,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(),
                      borderRadius: BorderRadius.circular(6)),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  minimumSize: const Size(335, 60),
                ),
                child: const Text("Submit",
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
