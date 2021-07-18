import 'package:flutter/material.dart';

BottomAppBar buildbottomAppbar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home,color: Colors.blue,)),
            IconButton(onPressed: () {}, icon: Icon(Icons.receipt_sharp,color: Colors.black45,)),
            IconButton(onPressed: () {}, icon: Icon(Icons.circle_rounded,color: Colors.black45)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person,color: Colors.black45)),
          ],
        ),
      ),
    );
  }
