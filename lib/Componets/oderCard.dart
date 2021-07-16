import 'package:clothing_store/Componets/smallproductContainer.dart';
import 'package:clothing_store/Model/product.dart';
import 'package:flutter/material.dart';

class OderCard extends StatelessWidget {
  final Product product;
  OderCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: ProductsmallContainer(
              image: product.image,
            ),
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 5),
              Text(product.size),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    product.newprice.toString(),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    product.newprice.toString(),
                    style: TextStyle(
                        fontSize: 17, decoration: TextDecoration.lineThrough),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.cancel,
                    size: 30,
                  )),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_circle,
                        size: 30,
                      )),
                  Text('01'),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle,
                        size: 30,
                      )),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
