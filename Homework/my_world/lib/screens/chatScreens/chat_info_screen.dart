// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widgets/chatscreenwidgets/info_item.dart';
import '../../widgets/chatscreenwidgets/profile_item.dart';

//Widgetlarım birleştiği yuva burada yer alıyor.
class ChatInfoScreen extends StatelessWidget {
  const ChatInfoScreen({super.key});

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
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ProfileItem(
                name: 'Muratcan SEN',
                avatar: "assets/images/chats_screen_images/avatarMuratcan.jpg",
                lastSeenStatus: "Çevrimiçi"),
            InfoItem(
              icon: Icon(Icons.email_sharp),
              name: "E-mail:",
              value: "sn.muratcan@hotmail.com",
              valueColor: Colors.yellowAccent,
            ),
            InfoItem(
              icon: Icon(Icons.phone),
              name: "Phone:",
              value: "+90 533 377 60 60",
              valueColor: Colors.yellowAccent,
            ),
            InfoItem(
              icon: Icon(Icons.location_city),
              name: "Adres",
              value: "İstanbul / Esenler",
              valueColor: Colors.yellowAccent,
            ),
          ],
        ),
      ),
    );
  }
}
