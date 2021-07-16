import 'package:clothing_store/Model/product.dart';
import 'package:flutter/material.dart';

class Producttile extends StatelessWidget {
  final Product product;
  final VoidCallback onpress;

  Producttile({ required this.product,required  this.onpress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: 150,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 10,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              product.title,
              style: TextStyle(fontSize: 22),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "\$${product.newprice.toString()}",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10),
                Text(
                  "\$${product.oldprice.toString()}",
                  style: TextStyle(
                      fontSize: 15, decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
