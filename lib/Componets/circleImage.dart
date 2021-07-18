import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String image;
  final String title;
  CircleImage({required this.image, required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border:Border.all(color: Colors.black45)
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: CircleAvatar(
                radius:30,
                backgroundImage: AssetImage(image),
              ),
            ),
          ),
          Text(title)
        ],
      ),
    );
  }
}
