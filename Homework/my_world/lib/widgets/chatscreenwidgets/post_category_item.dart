import 'package:flutter/material.dart';

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
              const SizedBox(width: 10.0),
              Text(name),
            ],
          ),
          Text(time),
        ],
      ),
    );
  }
}
