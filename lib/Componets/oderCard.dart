import 'package:clothing_store/Componets/smallproductContainer.dart';
import 'package:flutter/material.dart';

class OderCard extends StatelessWidget {
  final String image;
  final String title;
  final String size;
  final String newprice;
  final String oldprice;

  OderCard(
      {required this.image,
      required this.newprice,
      required this.oldprice,
      required this.size,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 10,),
            child: ProductsmallContainer(
              image: image,
            ),
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 5),
              Text(size),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    newprice,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    oldprice,
                    style: TextStyle(
                        fontSize: 17, decoration: TextDecoration.lineThrough),
                  ),
                ],
              )
            ],
          ),
          SizedBox(width: 20,),
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
