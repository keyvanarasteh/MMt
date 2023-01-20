//Profil widgeti burada yer alıyor.
import 'package:flutter/material.dart';

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
              const SizedBox(width: 10.0),
//Kişinin ismi
              Text(
                name,
                style: Theme.of(context)
                    .textTheme
                    .headline6, //Flutterda hazır bulunan kütüphane
              ),
            ],
          ),
          const SizedBox(height: 10.0),
//Profilin son görülme durumu.
          Text(
            lastSeenStatus,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: 8.5),
        ],
      ),
    );
  }
}
