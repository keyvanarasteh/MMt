//Info widget burada yer almaktadır.(Kişinin açıklama bilgilerini kullanabileceğimiz widget.)
import 'package:flutter/material.dart';

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
              const SizedBox(width: 10.0),
              Text(
                name,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            value,
            style: TextStyle(color: valueColor, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
