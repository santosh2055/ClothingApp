import 'package:clothing_store/Componets/Categores.dart';
import 'package:clothing_store/Componets/buildAppbar_home.dart';
import 'package:clothing_store/Componets/producttile.dart';
import 'package:clothing_store/Screen/poroductDetail_screen.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      backgroundColor: Color(0XffC2D3E0),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 5, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search product',
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 20),
                Categories(),
                SizedBox(height: 10),
                Text(
                  'New Arrivals',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductDetail()));
                  },
                  child: ProductTile(
                    image1: 'Images/1.jpg',
                    title1: 'New Tshirt',
                    price1: '\$100',
                    image2: 'Images/bag.jpg',
                    title2: 'New Bag',
                    price2: '\$200', 
                    oldprice1: '\$130', 
                    oldprice2: '\$240',
                  ),
                ),
                SizedBox(height: 10),
                ProductTile(
                  image1: 'Images/lbag.jpg',
                  title1: 'New Hat',
                  price1: '\$50',
                  image2: 'Images/shoe.webp',
                  title2: 'New Shoe',
                  price2: '\$30', 
                  oldprice1: '\$60', 
                  oldprice2: '\$40',
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              IconButton(onPressed: () {}, icon: Icon(Icons.receipt_sharp)),
              IconButton(onPressed: () {}, icon: Icon(Icons.circle_rounded)),
              IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(5.0),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
