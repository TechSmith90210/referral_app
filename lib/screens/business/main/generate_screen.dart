import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GenerateScreen extends StatefulWidget {
  const GenerateScreen({super.key});

  @override
  State<GenerateScreen> createState() => _GenerateScreenState();
}

class _GenerateScreenState extends State<GenerateScreen> {
  TextEditingController referralCodeController =
      TextEditingController(text: 'referral/delhidarbar/984849');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text(
          'Generate QR Code',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 450,
                width: 400,
                padding: EdgeInsets.all(35),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PrettyQrView.data(
                      data: 'lorem ipsum dolor sit amet',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      readOnly: true,
                      controller: referralCodeController,
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      decoration: InputDecoration(
                        labelText:
                            'Referral Link', // Using labelText for better UI consistency
                        labelStyle: TextStyle(
                            color: Colors
                                .black87), // Optional: Customize label style
                        contentPadding: EdgeInsets.symmetric(
                            horizontal:
                                12.0), // Increased padding for better touch
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(
                                text: referralCodeController.text));
                          },
                          icon: Icon(Icons.copy,
                              color: Colors
                                  .black87), // Blue color for copy icon for better visibility
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('Print'),
                  icon: Icon(Icons.local_print_shop_outlined),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.lightBlue),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('Share QR Code'),
                  icon: Icon(Icons.share),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.lightBlue),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
