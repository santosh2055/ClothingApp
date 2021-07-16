import 'package:clothing_store/Componets/oderCard.dart';
import 'package:clothing_store/Model/product.dart';
import 'package:flutter/material.dart';

class OderDetails extends StatefulWidget {
  final Product product;

  OderDetails({required this.product});
  @override
  _OderDetailsState createState() => _OderDetailsState();
}

class _OderDetailsState extends State<OderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XffC2D3E0),
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 5, right: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_sharp)),
                  SizedBox(
                    width: 50,
                  ),
                  Text('My Cart (3)',
                      style: TextStyle(
                        fontSize: 24,
                      )),
                ]),
              ),
              SizedBox(height: 10),
              OderCard(
                product: products[0],
              ),
              OderCard(
                product: products[3],
              ),
              OderCard(
                product: products[5],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: 'Prome Code', border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Apply',
                        )),
                  )
                ],
              ),
              SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub Total',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('\$300 US')
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('\$10 US')
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('\$310 US')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Proceed To CheckOut'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}