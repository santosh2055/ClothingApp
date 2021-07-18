import 'package:flutter/material.dart';

Row buildpromoCode() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: 'Prome Code', border: InputBorder.none),
          ),
        ),
        SizedBox(
          height: 50,
          width: 100,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Apply',
              )),
        )
      ],
    );
  }

