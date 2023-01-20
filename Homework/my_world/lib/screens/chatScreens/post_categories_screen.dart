// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../widgets/chatscreenwidgets/post_category_item.dart';

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
