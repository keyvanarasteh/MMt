// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/chatScreens/main_chat_screen.dart';

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
        primarySwatch: Colors.grey,
        //backgroundColor: Colors.grey,
        fontFamily: 'Ubuntu Font',
      ),
      home: MainChatScreen(),
    );
  }
}
