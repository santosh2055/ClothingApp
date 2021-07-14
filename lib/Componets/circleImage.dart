import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String image;
  final String title;
  CircleImage({required this.image,required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(image),
          ),
          Text(title)
        ],
      ),
    );
  }
}
