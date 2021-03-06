import 'package:clothing_store/Model/product.dart';
import 'package:clothing_store/Screen/details_screen.dart';
import 'package:flutter/material.dart';

class Producttile extends StatefulWidget {
  final Product product;

  Producttile({
    required this.product,
  });

  @override
  _ProducttileState createState() => _ProducttileState();
}

class _ProducttileState extends State<Producttile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ProductDetail(
            product: widget.product,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.start,
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
                    widget.product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white70,
                  child: IconButton(
                    onPressed: () {
                      widget.product.isFavourate = !widget.product.isFavourate;
                      setState(() {});
                    },
                    icon: Icon(
                      widget.product.isFavourate
                          ? Icons.favorite
                          : Icons.favorite_outline,
                      color: widget.product.isFavourate
                          ? Colors.red
                          : Colors.black,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 7),
          Text(
            widget.product.title,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 3),
          Row(
            children: [
              Text(
                "\$${widget.product.newprice.toString()}",
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(width: 10),
              Text(
                "\$${widget.product.oldprice.toString()}",
                style: TextStyle(
                    fontSize: 16, decoration: TextDecoration.lineThrough,color: Colors.black45),
              ),
            ],
          )
        ],
      ),
    );
  }
}
