import 'package:clothing_store/Model/product.dart';
import 'package:flutter/material.dart';

class Producttile extends StatelessWidget {
  final Product product;
  final VoidCallback onpress;
  bool isliked = false;

  Producttile(
      {required this.product, required this.onpress, required this.isliked});
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.43,
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
                right: 5,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white54,
                  child: IconButton(
                    onPressed: () {
                    },
                    icon: Icon(
                      isliked ? Icons.favorite : Icons.favorite_outline,
                      color: isliked ? Colors.red : Colors.black,
                      size: 25,
                    ),
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
          SizedBox(height: 2),
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
