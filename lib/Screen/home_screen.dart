import 'package:clothing_store/Componets/bulidBottomAppbar.dart';
import 'package:clothing_store/Componets/categores.dart';
import 'package:clothing_store/Componets/buildAppbar_home.dart';
import 'package:clothing_store/Componets/producttile.dart';
import 'package:clothing_store/Componets/producttile1.dart';
import 'package:clothing_store/Model/product.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEAEAEA),
        appBar: buildAppbar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: 5, left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Producttile(
                            product: products[5],
                          ),
                          SizedBox(height: 12),
                          Producttile1(
                            product: products[2],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Producttile1(
                            product: products[0],
                          ),
                          SizedBox(height: 12),
                          Producttile(
                            product: products[4],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: buildbottomAppbar(),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(5.0),
          child: FloatingActionButton(
            backgroundColor: Color(0xd2212fc4),
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
