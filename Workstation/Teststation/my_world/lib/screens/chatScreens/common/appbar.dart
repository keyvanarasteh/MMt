// ignore_for_file: unused_label

import 'package:flutter/material.dart';

class AppHeader extends StatefulWidget {
  const AppHeader({super.key});

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
          color: Colors.yellow,
          child: const Center(child: Text('mobile')));
    } else if (deviceTtpye == 'tablet') {
      return Container(
          height: 60,
          width: double.infinity,
          color: Colors.deepPurple,
          child: const Center(child: Text('tablet')));
    } else if (deviceTtpye == 'desktop') {
      return Container(
          height: 60,
          width: double.infinity,
          color: Colors.deepOrange,
          child: const Center(child: Text('desktop')));
    } else {
      return Container(
          height: 60,
          width: double.infinity,
          color: Colors.pink,
          child: const Center(child: Text('large')));
    }
  }
}
