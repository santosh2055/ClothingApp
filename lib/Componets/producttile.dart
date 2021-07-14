import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String image1;
  final String image2;
  final String title1;
  final String title2;
  final String price1;
  final String price2;
  final String oldprice1;
  final String oldprice2;

  ProductTile({
    required this.image1,
    required this.image2,
    required this.price1,
    required this.price2,
    required this.title1,
    required this.title2,
    required this.oldprice1,
    required this.oldprice2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 175,
                  width: 160,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage(image1),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
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
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              title1,
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                Text(price1, style: TextStyle(fontSize: 20)),
                SizedBox(width: 10),
                Text(
                  oldprice1,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.lineThrough),
                )
              ],
            )
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
                  width: 160,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage(image2),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
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
                )
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                title2,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(price2,
                      style:
                          TextStyle(fontSize: 20, )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    oldprice2,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.lineThrough),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
