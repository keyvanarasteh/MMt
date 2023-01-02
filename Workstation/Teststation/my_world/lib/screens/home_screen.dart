// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Text(
        "Hello Isu Student",
        style: TextStyle(
          color: Colors.black54,
          fontFamily: 'Merienda',
          fontSize: 38,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
        ),
      )),
    );
  }
}
