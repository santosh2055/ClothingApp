// import 'package:clothing_store/Model/product.dart';
import 'package:flutter/material.dart';

class ProductsmallContainer extends StatelessWidget {
  final String image;
  ProductsmallContainer({required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 55,
      width: 65,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
