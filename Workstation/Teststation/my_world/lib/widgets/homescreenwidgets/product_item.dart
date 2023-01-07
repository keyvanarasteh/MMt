// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
//Kutu Tasarımı
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black54,
          //Kutu Renk Geçişi
          gradient: LinearGradient(colors: [
            Color.fromRGBO(100, 100, 100, 10),
            Color.fromRGBO(253, 152, 0, 1),
          ]),
          borderRadius: BorderRadius.circular(12),
        ),

// Kutu Resmi Burada Yer Almaktadır.
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 25,
              ),
              child: Image.asset(
                  'assets/images/home_screen_images/Sahibinden_icon.png'),
            ),
          ],
        ),
      ),
    );
  }
}
