import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roaia/screen/Forget_Password.dart';
import 'package:roaia/screen/OTP.dart';
import 'package:roaia/screen/Reset_Password.dart';
import 'package:roaia/screen/add_contact.dart';
import 'package:roaia/screen/sign_Up.dart';
import 'package:roaia/screen/splash.dart';
import 'package:roaia/screen/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash_Screen(),
    );
  }
}


