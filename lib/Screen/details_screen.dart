import 'package:clothing_store/Componets/OderContainer.dart';
import 'package:clothing_store/Componets/smallproductContainer.dart';
import 'package:clothing_store/Model/product.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final Product product;

  ProductDetail({required this.product});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int index = 0;
  List<String> img = [products[5].image, products[6].image, products[7].image];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
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
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    child: Image.asset(
                      // widget.product.image,
                      img[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  BuildaddOder(product: widget.product, size: size),
                  Positioned(
                    right: 10,
                    top: 5,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white54,
                      child: Center(
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
                  ),
                  Positioned(
                    top: 150,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (index < 2) {
                              index++;
                            }
                          });
                        },
                        icon: Icon(
                          Icons.chevron_left_sharp,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    right: 0,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (index > 0) {
                              index--;
                            }
                          });
                        },
                        icon: Icon(
                          Icons.chevron_right_sharp,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .4,
                    left: MediaQuery.of(context).size.height * 0.1,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70),
                      height: 75,
                      width: 235,
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ProductsmallContainer(image: products[5].image),
                            SizedBox(width: 4),
                            ProductsmallContainer(image: products[6].image),
                            SizedBox(width: 4),
                            ProductsmallContainer(image: products[7].image)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
