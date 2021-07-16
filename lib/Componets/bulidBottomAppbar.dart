import 'package:flutter/material.dart';

BottomAppBar buildbottomAppbar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.receipt_sharp)),
            IconButton(onPressed: () {}, icon: Icon(Icons.circle_rounded)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
