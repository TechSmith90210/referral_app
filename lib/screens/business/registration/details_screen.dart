import 'package:flutter/material.dart';
import 'package:referral_app/screens/business/registration/contact_screen.dart';

enum Categories {
  entertainment('Entertainment', 'entertainment'),
  foodAndBeverages('Food and Beverages', 'food_and_beverages'),
  clothing('Clothing', 'clothing'),
  pharmaceutical('Pharmaceutical', 'pharmaceutical'),
  electronics('Electronics', 'electronics'),
  other('Other', 'other');

  const Categories(this.label, this.value);

  final String label;
  final String value;
}

class BusinessRegistrationDetailsScreen extends StatelessWidget {
  const BusinessRegistrationDetailsScreen({super.key});

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
              'Business Details',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Form(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Business Name',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), isDense: true),
                    keyboardType: TextInputType.name,
                  )
                ],
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Form(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Owner Name',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), isDense: true),
                    keyboardType: TextInputType.name,
                  )
                ],
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Form(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Type of Business',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<Categories>(
                      width: double.infinity,
                      label: Text('Category'),
                      inputDecorationTheme: InputDecorationTheme(
                        alignLabelWithHint: false,
                        border: OutlineInputBorder(),
                      ),
                      dropdownMenuEntries:
                          Categories.values.map<DropdownMenuEntry<Categories>>(
                        (e) {
                          return DropdownMenuEntry(value: e, label: e.label);
                        },
                      ).toList())
                ],
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Form(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tan Number',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), isDense: true),
                    keyboardType: TextInputType.number,
                  )
                ],
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Form(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Udhyam Adhaar',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), isDense: true),
                    keyboardType: TextInputType.text,
                  )
                ],
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Form(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    maxLines: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                    ),
                    keyboardType: TextInputType.multiline,
                    textAlignVertical: TextAlignVertical.top,
                  )
                ],
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              BusinessRegistrationContactScreen()));
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
