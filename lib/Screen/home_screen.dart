import 'package:clothing_store/Componets/bulidBottomAppbar.dart';
import 'package:clothing_store/Componets/categores.dart';
import 'package:clothing_store/Componets/buildAppbar_home.dart';
import 'package:clothing_store/Componets/producttile.dart';
import 'package:clothing_store/Model/product.dart';
import 'package:clothing_store/Screen/details_screen.dart';
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
        child: Padding(
          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
          child: SingleChildScrollView(
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
                SizedBox(height: 10),
                Categories(),
                SizedBox(height: 5),
                Text(
                  'New Arrivals',
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Container(
                  height:MediaQuery.of(context).size.height*0.4,
                  child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        childAspectRatio: 4 / 5),
                    itemBuilder: (ctx, index) => Producttile(
                      product: products[index],
                      onpress: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductDetail(product: products[index],),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: buildbottomAppbar(),
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
