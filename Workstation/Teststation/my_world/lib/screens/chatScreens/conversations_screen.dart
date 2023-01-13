//Konuşmaların olduğu Ekran Burası
//Chat kütüphanesi olarak chat_bubbles kullanıldı.
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

class ConversationsScreen extends StatelessWidget {
  const ConversationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: Colors.orange.shade900),
            right: BorderSide(color: Colors.orange.shade900),
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            BubbleSpecialThree(
              text: 'Added iMassage shape bubbles',
              color: Color(0xFF1B97F3),
              tail: false,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: 'Please try and give some feedback on it!',
              color: Color(0xFF1B97F3),
              tail: true,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: 'Sure',
              color: Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "I tried. It's awesome!!!",
              color: Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "Thanks",
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: 'Added iMassage shape bubbles',
              color: Color(0xFF1B97F3),
              tail: false,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: 'Please try and give some feedback on it!',
              color: Color(0xFF1B97F3),
              tail: true,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: 'Sure',
              color: Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "I tried. It's awesome!!!",
              color: Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "Thanks",
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: 'Added iMassage shape bubbles',
              color: Color(0xFF1B97F3),
              tail: false,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: 'Please try and give some feedback on it!',
              color: Color(0xFF1B97F3),
              tail: true,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: 'Sure',
              color: Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "I tried. It's awesome!!!",
              color: Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "Thanks",
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: 'Added iMassage shape bubbles',
              color: Color(0xFF1B97F3),
              tail: false,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: 'Please try and give some feedback on it!',
              color: Color(0xFF1B97F3),
              tail: true,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: 'Sure',
              color: Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "I tried. It's awesome!!!",
              color: Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "Thanks",
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: 'Added iMassage shape bubbles',
              color: Color(0xFF1B97F3),
              tail: false,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: 'Please try and give some feedback on it!',
              color: Color(0xFF1B97F3),
              tail: true,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: 'Sure',
              color: Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "I tried. It's awesome!!!",
              color: Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "Thanks",
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            ),
          ],
        ));
  }
}
