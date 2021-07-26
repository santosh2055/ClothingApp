import 'package:clothing_store/Model/product.dart';
import 'package:clothing_store/Screen/oder_screen.dart';
import 'package:flutter/material.dart';

class BuildaddOder extends StatefulWidget {
  const BuildaddOder({
    Key? key,
    required this.product,
    required this.size,
  }) : super(key: key);

  final Product product;
  final Size size;

  @override
  _BuildaddOderState createState() => _BuildaddOderState();
}

class _BuildaddOderState extends State<BuildaddOder> {
  int numofitem = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 15, left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.product.title,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  '\$${widget.product.newprice}',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Large',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                          )
                        ],
                      ),
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black26),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Color'),
                          SizedBox(height: 5),
                          Container(
                            height: 10,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black26),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (numofitem > 1) {
                                  numofitem--;
                                }
                              });
                            },
                            icon: Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            numofitem.toString().padLeft(2, "0"),
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  numofitem++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.black,
                              ))
                        ],
                      ),
                      height: 60,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.black26),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Composition'),
                          Text(
                            'Slik Bambo',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      height: 60,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.black26),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            OderDetails(product: products.first),
                      ),
                    );
                  },
                  child: Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 10, bottom: 10, top: 15),
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_box_rounded,
                                size: 40,
                                color: Colors.white,
                              )),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Add',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    height: 130,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color(0xd2212fc4),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.56),
      height: MediaQuery.of(context).size.height * 0.35,
      width: 400,
      decoration: BoxDecoration(
        color: Color(0xffEAEAEA),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }
}
