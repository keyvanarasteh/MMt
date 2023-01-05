// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test00/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        fontFamily: 'Ubuntu Font',
      ),
      home: HomeScreen(),
    );
  }
}
