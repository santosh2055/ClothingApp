import 'package:flutter/material.dart';

import '../constant.dart';

Row buildpromoCode() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 60,
        width: 335,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 200,
              child: TextFormField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    hintText: 'Prome Code', border: InputBorder.none),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                height: 65,
                width: 100,
                child: ElevatedButton(
                  style: kbuttonstyle,
                  onPressed: () {},
                  child: Text(
                    'Apply',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
        
      ),
    ],
  );
}
