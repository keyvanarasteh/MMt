// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PostCategoriesScreen extends StatelessWidget {
  const PostCategoriesScreen({super.key});

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
        PostCategoriItem(
          icon: Icon(Icons.inbox_outlined),
          name: 'Gelen Kutusu',
          time: "",
          active: true,
        ),
        PostCategoriItem(
            icon: Icon(Icons.outbox_outlined),
            name: 'Giden Mesajlar',
            time: ""),
        PostCategoriItem(
            icon: Icon(Icons.warning), name: 'İstenmeyen Mailler', time: ""),
        PostCategoriItem(icon: Icon(Icons.archive), name: 'Arşiv', time: ""),
      ]),
    ));
  }
}

//Posta Categorileri Widgeti
class PostCategoriItem extends StatelessWidget {
  final String name;
  final Icon icon;
  final String time;
  final bool active;
  const PostCategoriItem({
    Key? key,
    required this.name,
    required this.icon,
    required this.time,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: active ? Colors.grey.shade600 : Colors.grey.shade800,
        border: Border(bottom: BorderSide(color: Colors.orange.shade900)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
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
