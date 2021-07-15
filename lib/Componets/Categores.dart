import 'package:flutter/material.dart';

import 'circleImage.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CircleImage(
            image: 'Images/bag.jpg',
            title: 'Bag',
          ),
          CircleImage(
            image: 'Images/tshirt.webp',
            title: 'T-shirt',
          ),
          CircleImage(
            image: 'Images/lbag.jpg',
            title: 'Hat',
          ),
          CircleImage(
            image: 'Images/shoe.webp',
            title: 'shoe',
          ),
          CircleImage(
            image: 'Images/bag.jpg',
            title: 'Bag',
          ),
        ],
      ),
    );
  }
}
