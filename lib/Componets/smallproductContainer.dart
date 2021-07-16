import 'package:flutter/material.dart';

class ProductsmallContainer extends StatelessWidget {
  final String image;
  ProductsmallContainer({required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 2),
      ),
      height: 70,
      width: 75,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(image)
        ),
      ),
    );
  }
}