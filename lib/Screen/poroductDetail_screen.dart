import 'package:clothing_store/Componets/OderContainer.dart';
import 'package:clothing_store/Componets/smallproductContainer.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XffC2D3E0),
        elevation: 0,
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
      backgroundColor: Color(0XffC2D3E0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage('Images/1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                OderContainer(context, size),
                Positioned(
                  right: 10,
                  top: 5,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
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
                  top: 250,
                  left: 50,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
