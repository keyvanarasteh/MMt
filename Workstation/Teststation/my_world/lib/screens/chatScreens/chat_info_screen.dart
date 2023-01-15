// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//Widgetlarım birleştiği yuva burada yer alıyor.
class ChatInfoScreen extends StatelessWidget {
  const ChatInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
    );
  }
}

//-------------------------------------------------------------------------------------------------------------

//Profil widgeti burada yer alıyor.
class ProfileItem extends StatelessWidget {
  final String name;
  final String avatar;
  final String lastSeenStatus;
  const ProfileItem({
    Key? key,
    required this.name,
    required this.avatar,
    required this.lastSeenStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.orange.shade900)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 64, //Resim yuvarlağının büyüklüğü
                backgroundImage: AssetImage(avatar), //Resim burada
              ),
              SizedBox(width: 10.0),
//Kişinin ismi
              Text(
                name,
                style: Theme.of(context)
                    .textTheme
                    .headline6, //Flutterda hazır bulunan kütüphane
              ),
            ],
          ),
          SizedBox(height: 10.0),
//Profilin son görülme durumu.
          Text(
            lastSeenStatus,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: 8.5),
        ],
      ),
    );
  }
}

//Info widget burada yer almaktadır.(Kişinin açıklama bilgilerini kullanabileceğimiz widget.)
class InfoItem extends StatelessWidget {
  final String name;
  final Icon icon;
  final String value;
  // ignore: prefer_typing_uninitialized_variables
  final valueColor;
  const InfoItem({
    Key? key,
    required this.name,
    required this.icon,
    required this.value,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.orange.shade900)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              SizedBox(width: 10.0),
              Text(
                name,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            value,
            style: TextStyle(color: valueColor, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
