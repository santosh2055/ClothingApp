import 'package:clothing_store/Model/product.dart';
import 'package:clothing_store/Screen/details_screen.dart';
import 'package:flutter/material.dart';

class DetailProductImage extends StatelessWidget {
  final String image;
  DetailProductImage({ required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
