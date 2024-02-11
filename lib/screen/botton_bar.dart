
import 'package:flutter/material.dart';
import 'package:roaia/screen/home.dart';
import 'package:roaia/screen/notification.dart';
import 'package:roaia/screen/profile.dart';
import 'package:roaia/screen/user.dart';

class Botton_Bar extends StatefulWidget {
  const Botton_Bar({super.key});

  @override
  State<Botton_Bar> createState() => _Botton_BarState();
}

class _Botton_BarState extends State<Botton_Bar> {

  int currentIndex=0;

  List Screen=[
    Home_Screen(),
    User_Screen(),
    Notification_Screen(),
    Profile_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedIconTheme: IconThemeData(size: 40,),
        selectedFontSize: 20,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.route_outlined), label: 'Location',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'User'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_important_outlined),
              label: 'Notification'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',),
        ],
        onTap: (index){
          setState(() {
            currentIndex =index;
          });
        },
      ),
    );
  }
}