// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test00/screens/beginScreens/member_login_screen.dart';

void main() {
  runApp(const MyWorld());
}

class MyWorld extends StatelessWidget {
  const MyWorld({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyWorld',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: Colors.grey,
        backgroundColor: Colors.transparent,
        //backgroundColor: Colors.grey,
        fontFamily: 'Ubuntu Font',
      ),
      home: MemberLoginScreen(),
    );
  }
}
