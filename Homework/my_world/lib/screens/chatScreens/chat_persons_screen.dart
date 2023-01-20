// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/chatscreenwidgets/chat_item.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Colors.orange.shade900),
          right: BorderSide(color: Colors.orange.shade900),
        ),
      ),
      child: ListView(children: [
        ChatItem(
          name: 'Muratcan SEN',
          avatar: "assets/images/chats_screen_images/avatarMuratcan.jpg",
          time: "11.50",
          active: true,
        ),
        ChatItem(
          name: 'Keyvan ARASTEH',
          avatar: "assets/images/chats_screen_images/avatarKeyvan.jpg",
          time: "11.40",
          active: true,
        ),
        ChatItem(
            name: 'Arda BULU',
            avatar: "assets/images/chats_screen_images/avatarArda.jpg",
            time: "11.30"),
        ChatItem(
            name: 'Mert',
            avatar: "assets/images/chats_screen_images/avatarMert.jpg",
            time: "11.20"),
      ]),
    ));
  }
}
