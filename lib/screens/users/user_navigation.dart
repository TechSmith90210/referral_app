// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:referral_app/screens/users/user_homescreen.dart';
import 'package:referral_app/screens/users/referral_screen.dart';
import 'package:referral_app/screens/users/user_reward.dart';

class UserNavigation extends StatefulWidget {
  @override
  State<UserNavigation> createState() => _UserNavigationState();
}

class _UserNavigationState extends State<UserNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Center(child: UserHomescreen()),
    Center(child: ReferralsScreen()),
    Center(child: UserReward()),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: _onTabTapped,
        indicatorColor: Colors.lightBlue,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 50,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.currency_exchange_outlined),
            selectedIcon: Icon(Icons.currency_exchange_outlined),
            label: 'Referrals',
          ),
          NavigationDestination(
            icon: Icon(Icons.tag_faces),
            selectedIcon: Icon(Icons.tag_faces),
            label: 'Rewards',
          ),
        ],
      ),
    );
  }
}
