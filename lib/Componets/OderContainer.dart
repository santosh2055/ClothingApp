import 'package:clothing_store/Model/product.dart';
import 'package:clothing_store/Screen/oder_screen.dart';
import 'package:flutter/material.dart';


class BuildaddOder extends StatelessWidget {
  const BuildaddOder({
    Key? key,
    required this.product,
    required this.size,
  }) : super(key: key);

  final Product product;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 4, right: 4),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$${product.newprice}',
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
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('Color'), Text('White')],
                      ),
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
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
                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                        Text('01'),
                        IconButton(onPressed: () {}, icon: Icon(Icons.remove))
                      ]),
                      height: 60,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('Composition'), Text('Slik Bambo')],
                      ),
                      height: 60,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => OderDetails(product: product),
                    ),
                  ),
                  child: Container(
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
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                    height: 140,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      margin: EdgeInsets.only(top: size.height * 0.55),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0XffC2D3E0),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
    );
  }
}
