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
      backgroundColor: Colors.grey.shade600,
      // Bar tasarımı yapılıyor..
      appBar: AppBar(
        elevation: 30,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.orange,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.person,
              color: Colors.orange,
            ),
          ),
        ],
      ),
      //Body
      body: Column(
        children: [
          // Karşılama Metni
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Hoşgeldin Patron",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                //fontFamily: "Merienda"
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //Arama Alanı
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.question_answer,
                ),
                hintText: "Bugün benden neler istiyorsun bakalım?",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ),
          ),

          //Catogories

          //Product
        ],
      ),
      //Alt Bar Ekledim.
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.phone),
          label: "Telefon",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favoriler",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Ulak",
        ),
      ]),
    );
  }
}
