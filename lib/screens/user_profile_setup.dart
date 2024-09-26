import 'package:flutter/material.dart';

class UserProfileSetup extends StatelessWidget {
  const UserProfileSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Profile Set Up")),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("First Name"),
                            Container(
                                margin: EdgeInsets.only(top: 5),
                                child: MyFormTextField())
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Last Name"),
                            Container(
                                margin: EdgeInsets.only(top: 5),
                                child: MyFormTextField()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                const Text("Username"),
                SizedBox(
                  height: 1,
                ),
                const Text(
                  "User Name should not contain any special character.",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10), child: MyFormTextField()),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text("Enter Email")),
                Container(
                  height: 45,
                  margin: EdgeInsets.only(top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9))),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text("Enter Phone Number")),
                Container(
                  height: 45,
                  margin: EdgeInsets.only(top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9))),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text("Enter Address")),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 5),
                  child: TextFormField(
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.only(right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("City"),
                              Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: MyFormTextField())
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Pin Code"),
                              Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: MyFormTextField()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
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
                )
              ],
            ),
          ),
        ));
  }
}

class MyFormTextField extends StatelessWidget {
  const MyFormTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(9))),
      ),
    );
  }
}
