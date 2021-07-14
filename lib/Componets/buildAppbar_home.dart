import 'package:flutter/material.dart';

AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Color(0XffC2D3E0),
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          )),
      title: Center(
        child: Text(
          "ISSACS",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
        )
      ],
    );
  }
