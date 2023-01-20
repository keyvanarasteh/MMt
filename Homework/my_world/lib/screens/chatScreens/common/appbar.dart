// ignore_for_file: unused_label, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AppHeader extends StatefulWidget {
  final Function()? onPostCategoryClicked;
  final Function()? onChatInfoClicked;

  const AppHeader(
      {super.key, this.onPostCategoryClicked, this.onChatInfoClicked});

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
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
//Ekranının boyutunu alıyorum.

    var scrWidth = MediaQuery.of(context).size.width;
    //var scrHeight = MediaQuery.of(context).size.height;

    var deviceTtpye = checkDevices(scrWidth);

    if (deviceTtpye == 'mobile') {
      return Container(
        height: 60,
        width: double.infinity,
        // color: Colors.grey.shade700,
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu),
            const Text("Sohbet Ekranı"),
            const Icon(Icons.person),
          ],
        ),
      );
    } else if (deviceTtpye == 'tablet') {
      return Container(
        height: 60,
        width: double.infinity,
        color: Colors.grey.shade800,
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: widget.onPostCategoryClicked,
                child: const Icon(Icons.category_outlined)),
            const Text("Sohbet Ekranı"),
            InkWell(
                onTap: widget.onChatInfoClicked,
                child: const Icon(Icons.info_outline)),
          ],
        ),
      );
    } else if (deviceTtpye == 'desktop') {
      return Container(
        height: 60,
        width: double.infinity,
        color: Colors.grey.shade800,
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Sohbet Ekranı"),
            InkWell(
                onTap: widget.onChatInfoClicked,
                child: const Icon(Icons.info_outline)),
          ],
        ),
      );
    } else {
      return Container(
        height: 60,
        width: double.infinity,
        color: Colors.grey.shade800,
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu),
            const Text("Sohbet Ekranı"),
            const Icon(Icons.person),
          ],
        ),
      );
    }
  }
}
