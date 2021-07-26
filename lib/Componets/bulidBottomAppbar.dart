import 'package:flutter/material.dart';

BottomAppBar buildbottomAppbar() {
    return BottomAppBar(
      color: Color(0xffEAEAEA),
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home,color: Color(0xd2212fc4),)),
            IconButton(onPressed: () {}, icon: Icon(Icons.receipt_sharp,color: Colors.black45,)),
            IconButton(onPressed: () {}, icon: Icon(Icons.circle_rounded,color: Colors.black45)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person,color: Colors.black45)),
          ],
        ),
      ),
    );
  }
