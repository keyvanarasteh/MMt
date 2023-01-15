// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test00/screens/beginScreens/home_screen.dart';

class MemberLoginScreen extends StatefulWidget {
  const MemberLoginScreen({super.key});

  @override
  State<MemberLoginScreen> createState() => _MemberLoginScreenState();
}

class _MemberLoginScreenState extends State<MemberLoginScreen> {
  get padding => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.grey.shade600,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          // decoration: const BoxDecoration(color: Colors.orange),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        width: 1,
                      )),
                  child: Icon(
                    Icons.fingerprint,
                    size: 100,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange.shade800,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  right: 15,
                  left: 15,
                ),
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.account_circle),
                      hintText: "E-mail giriniz:"),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange.shade800,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  right: 15,
                  left: 15,
                ),
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Şifre giriniz:",
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreens(),
                      ));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 90),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.grey.shade800,
                        Colors.orange.shade700
                      ]),
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                      child: Text(
                    "GİRİŞ YAP",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Seni tanıyabilmem için bilgilerini bana girebilir misin ? !",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      //fontFamily: "Merienda"
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
