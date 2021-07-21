import 'package:clothing_store/Componets/buildPromo.dart';
import 'package:clothing_store/Componets/oderCard.dart';
import 'package:clothing_store/Model/product.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

import '../constant.dart';

class OderDetails extends StatefulWidget {
  final Product? product;

  OderDetails({this.product});
  @override
  _OderDetailsState createState() => _OderDetailsState();
}

class _OderDetailsState extends State<OderDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Center(
              child: Text(
            'MY Cart(3)',
            style: TextStyle(fontSize: 20, color: Colors.black),
          )),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 10, left: 12, right: 12, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                OderCard(product: products[0]),
                SizedBox(height: 10),
                OderCard(product: products[1]),
                SizedBox(height: 10),
                OderCard(product: products[2]),
                SizedBox(height: 20),
                buildpromoCode(),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub Total:',
                            style: kpricesumarytextstyle,
                          ),
                          Text(
                            '\$300 US',
                            style: kpricesummarystyle,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping',
                            style: kpricesumarytextstyle,
                          ),
                          Text(
                            '\$10 US',
                            style: kpricesummarystyle,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      DottedLine(
                        dashColor: Colors.black54,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: kpricesumarytextstyle,
                          ),
                          Text(
                            '\$310 US',
                            style: kpricesummarystyle,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: kbuttonstyle,
                      onPressed: () {},
                      child: Text('Proceed To CheckOut'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
