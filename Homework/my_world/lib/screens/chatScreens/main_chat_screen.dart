// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';

import 'post_categories_screen.dart';
import 'chat_info_screen.dart';
import 'chat_persons_screen.dart';
import 'common/appbar.dart';
import 'conversations_screen.dart';

class MainChatScreen extends StatefulWidget {
  const MainChatScreen({super.key});

  @override
  State<MainChatScreen> createState() => _MainChatScreenState();
}

class _MainChatScreenState extends State<MainChatScreen> {
  checkDevices(double width) {
//Ekran bouylatlarına göre şartlama
    if (width <= 576) {
      return "mobile";
    } else if (width <= 768) {
      return "tablet";
    } else if (width <= 1024) {
      return "desktop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    //var scrHeight = MediaQuery.of(context).size.height;

    var deviceTtpye = checkDevices(scrWidth);

    Widget buildMainArea() {
      if (deviceTtpye == 'mobile') {
        return ConversationsScreen();
      } else if (deviceTtpye == 'tablet') {
        return Row(
          children: [
            Expanded(
              flex: 5,
              child: ChatsScreen(),
            ),
            Expanded(
              flex: 7,
              child: ConversationsScreen(),
            ),
          ],
        );
      } else if (deviceTtpye == 'desktop') {
        return Row(
          children: [
            Expanded(
              flex: 3,
              child: CategoriesScreen(),
            ),
            Expanded(
              flex: 4,
              child: ChatsScreen(),
            ),
            Expanded(
              flex: 5,
              child: ConversationsScreen(),
            ),
          ],
        );
      } else {
        return Row(
          children: [
            Expanded(
              flex: 4,
              child: CategoriesScreen(),
            ),
            Expanded(
              flex: 5,
              child: ChatsScreen(),
            ),
            Expanded(
              flex: 6,
              child: ConversationsScreen(),
            ),
            Expanded(
              flex: 5,
              child: ChatInfoScreen(),
            ),
          ],
        );
      }
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          AppHeader(),
          Expanded(
            child: buildMainArea(),
          )
        ],
      ),
    );
  }
}
