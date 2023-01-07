// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test00/icons/heart_like_icons.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
//Kutu Tasarımı
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black54,
          //Kutu Renk Geçişi
          gradient: LinearGradient(
              colors: [
                Color.fromRGBO(48, 48, 48, 10),
                Color.fromRGBO(253, 152, 0, 1),
              ],
              //Kutu Renk Geçişi Yönü
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          //Kutu Yuvarlaklığı
          borderRadius: BorderRadius.circular(32),
        ),

        child: Column(
          children: [
// Kutu Resmi Burada Yer Almaktadır.
            //Resim ile Kutu Arasındaki Boşluklar
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 25,
              ),
//Kutuya Resim Ekleme
              //ClipRRect ile borderRadius kullanılarak resim kenarları yumuşatıldı.
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.asset(
                    'assets/images/home_screen_images/Arabam_icon.png'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
//Market İsmi
                  SizedBox(
                    height: 25,
                  ),

                  Text(
                    "Arabam.com",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
//İsim ile Açıklama Boşluğu
                  SizedBox(
                    height: 5,
                  ),

//Market Açıklaması
                  Text(
                    "Araç Alım Satım Sayfası",
                    style: TextStyle(
                        color: Color.fromARGB(140, 255, 153, 0),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 20,
                  ),

//Market Değer Yüzdeliği
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Özel bir ikon ekledim ve bu ikon assets/icon içerisinde
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(HeartLike.heart, color: Colors.red),
                            Text("%80"),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(4)),
                          child: Icon(Icons.login),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
