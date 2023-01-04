// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
          child: SafeArea(
        child: Column(
          children: [
            //Başlık Yazım
            Text("Hello My BOSS.",
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Merienda',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic)),
            // Ana Teblerim
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(color: Colors.blue, child: Text("1"))),
                Expanded(
                    flex: 2,
                    child: Container(color: Colors.yellow, child: Text("2"))),
                Expanded(
                    flex: 5,
                    child: Container(color: Colors.red, child: Text("3"))),
                Expanded(
                    flex: 2,
                    child: Container(color: Colors.green, child: Text("4"))),
              ],
            ),
            //Mesaj
            Row(
              children: [
                Icon(Icons.chat),
                SizedBox(
                  width: 15,
                ),
                Text("Message"),
              ],
            )
          ],
        ),
      )),
    );
  }
}
