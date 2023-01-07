// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test00/screens/home_screen.dart';

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
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 44, 46, 50)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 1,
                    )),
                child: Container(
                    child: Icon(
                  Icons.fingerprint,
                  size: 100,
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 33, 67, 92),
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
                  style: TextStyle(fontFamily: 'Merienda', color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 33, 67, 92),
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
                    fontFamily: 'Merienda',
                    color: Colors.white,
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 90),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.white30, Colors.black54]),
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                      child: Text(
                    "GİRİŞ YAP",
                    style: TextStyle(
                        fontFamily: 'Merienda',
                        color: Colors.white,
                        fontSize: 25),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
