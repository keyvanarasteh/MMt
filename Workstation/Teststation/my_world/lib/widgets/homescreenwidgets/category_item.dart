// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String catogoryTitle;
  final bool isSelected;

  const CategoryItem({
    Key? key,
    required this.catogoryTitle,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          Text(
            catogoryTitle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              //isSelected ? 1 : 0,
              color: isSelected ? Colors.green : Colors.white,
            ),
          ),
          isSelected
              ? Icon(
                  Icons.circle,
                  size: 15,
                  color: Colors.green,
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
