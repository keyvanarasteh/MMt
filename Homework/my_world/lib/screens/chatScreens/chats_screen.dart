// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
            time: "11.50"),
        ChatItem(
            name: 'Keyvan ARASTEH',
            avatar: "assets/images/chats_screen_images/avatarKeyvan.jpg",
            time: "11.40"),
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

class ChatItem extends StatelessWidget {
  final String name;
  final String avatar;
  final String time;
  const ChatItem({
    Key? key,
    required this.name,
    required this.avatar,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.orange.shade900)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(avatar),
              ),
              SizedBox(width: 10.0),
              Text(name),
            ],
          ),
          Text(time),
        ],
      ),
    );
  }
}
