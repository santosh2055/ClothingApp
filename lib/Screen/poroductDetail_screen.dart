import 'package:clothing_store/Componets/smallproductContainer.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XffC2D3E0),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                  ],
                ),
                Stack(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Container(
                      color: Color(0XffC2D3E0),
                      height: MediaQuery.of(context).size.height * .6,
                      width: MediaQuery.of(context).size.width * 8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage('Images/1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      left: 40,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XffC2D3E0)),
                          height: 84,
                          width: 240,
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            children: [
                              ProductsmallContainer(image: 'Images/1.jpg'),
                              SizedBox(width: 4),
                              ProductsmallContainer(image: 'Images/2.jpg'),
                              SizedBox(width: 4),
                              ProductsmallContainer(image: 'Images/3.jpg')
                            ],
                          )),
                    ),
                    Positioned(
                      right: 10,
                      top: 5,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'New Fashion Shirt',
                              style: TextStyle(fontSize: 22),
                            ),
                            Text(
                              'Rs. 2000',
                              style: TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Text('Size'), Text('Large')],
                                  ),
                                  height: 120,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Text('Color'), Text('White')],
                                  ),
                                  height: 120,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Container(
                                  child: Row(children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                            Icons.exposure_minus_1_outlined)),
                                    Text('01'),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                            Icons.exposure_plus_1_outlined))
                                  ]),
                                  height: 120,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Composition'),
                                      Text('Slik Bambo')
                                    ],
                                  ),
                                  height: 120,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add_box_rounded,
                                        size: 40,
                                        color: Colors.white,
                                      )),
                                  SizedBox(height: 20),
                                  Text(
                                    'Add',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                              height: 240,
                              width: 75,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
