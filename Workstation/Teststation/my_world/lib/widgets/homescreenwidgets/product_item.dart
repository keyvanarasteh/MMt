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
        width: 200,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Image.asset('assets/images/Amazon_icon.jpg'),
          ],
        ),
      ),
    );
  }
}
