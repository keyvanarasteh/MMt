// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'chat_info_screen.dart';
import 'chats_screen.dart';
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
        return ChatsScreen();
      } else if (deviceTtpye == 'tablet') {
        return Row(
          children: [
            Expanded(
              child: CategoriesScreen(),
            ),
            Expanded(
              child: ChatsScreen(),
            ),
          ],
        );
      } else if (deviceTtpye == 'desktop') {
        return Row(
          children: [
            Expanded(
              child: CategoriesScreen(),
            ),
            Expanded(
              child: ChatsScreen(),
            ),
            Expanded(
              child: ConversationsScreen(),
            ),
          ],
        );
      } else {
        return Row(
          children: [
            Expanded(
              child: CategoriesScreen(),
            ),
            Expanded(
              child: ChatsScreen(),
            ),
            Expanded(
              child: ConversationsScreen(),
            ),
            Expanded(
              child: ChatInfoScreen(),
            ),
          ],
        );
      }
    }

    return Scaffold(
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
