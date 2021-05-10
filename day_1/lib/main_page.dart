import 'package:day_1/setting_page.dart';
import 'package:day_1/wallet_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:day_1/explore_page.dart';
import 'package:day_1/notifitcation_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final List<Widget> _children = [
    WalletPage(), ExplorePage(),  NotificationPage(), SettingPage()
  ];

  void onTapTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTapTapped,
          selectedItemColor: Color(0xFF4B5867),
          unselectedItemColor: Color(0xFFBDBDBD),
          unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 15),
          elevation: 2,
          type: BottomNavigationBarType.fixed,
          iconSize: 25,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet
              ),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications
              ),
              label: "Notification",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings
              ),
              label: "Setting",
            ),
          ]),
    );
  }
}
