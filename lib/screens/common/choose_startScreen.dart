import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:referral_app/screens/users/user_get_started_screen.dart';
import '../business/get_started_screen.dart';

class ChooseStartscreen extends StatelessWidget {
  const ChooseStartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> selection = ValueNotifier<int>(-1);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: ValueListenableBuilder<int>(
          valueListenable: selection,
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Are you a business or an individual?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                // User selection circle first
                GestureDetector(
                  onTap: () {
                    // Toggle selection for user
                    selection.value = (selection.value == 0) ? -1 : 0;
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: value == 0 ? Colors.blue : Colors.grey,
                            width: value == 0 ? 2 : 1,
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/choose_user.svg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text('User'),
                    ],
                  ),
                ),
                // Business selection circle below User
                GestureDetector(
                  onTap: () {
                    // Toggle selection for business
                    selection.value = (selection.value == 1) ? -1 : 1;
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: value == 1 ? Colors.blue : Colors.grey,
                            width: value == 1 ? 2 : 1,
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/choose_business.svg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text('Business'),
                    ],
                  ),
                ),
                if (value != -1)
                  ElevatedButton(
                    onPressed: () {
                      // Adjust logic: 0 for User, 1 for Business
                      if (value == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UserGetStartedScreen(),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const BusinessGetStartedScreen(),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: const Size(150, 50),
                    ),
                    child: Text(
                      // Adjusted button text
                      'Start As ${value == 0 ? 'User' : 'Business'}',
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
