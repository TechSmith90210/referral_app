import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseStartscreen extends StatelessWidget {
  const ChooseStartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> selection;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Are you a business or an individual?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 0.2),
            ),
            child: SvgPicture.asset('assets/choose_business.svg',
                fit: BoxFit.contain),
          ),
          Text('Business'),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 0.2),
            ),
            child:
                SvgPicture.asset('assets/choose_user.svg', fit: BoxFit.contain),
          ),
          Text('User'),
        ],
      ),
    );
  }
}
