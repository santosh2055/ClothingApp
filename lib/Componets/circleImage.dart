import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final image;
  CircleImage({this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(image),
      ),
    );
  }
}