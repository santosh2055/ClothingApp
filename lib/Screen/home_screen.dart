import 'package:clothing_store/Componets/circleImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomepageScreen extends StatefulWidget {
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0XffC2D3E0),
                      Color(0X8CC2D3E0),
                      Color(0X59C2D3E0),
                      Color(0X8CC2D3E0),
                      Color(0X1AC2D3E0)
                    ]),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 45, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                          Text(
                            "ISSACS",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_cart),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
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
                      SizedBox(height: 30),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CircleImage(
                              image: 'Images/bag.jpg',
                            ),
                            CircleImage(
                              image: 'Images/tshirt.webp',
                            ),
                            CircleImage(
                              image: 'Images/hat.jpg',
                            ),
                            CircleImage(
                              image: 'Images/shoe.webp',
                            ),
                            CircleImage(
                              image: 'Images/lbag.jpg',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'New Arrivals',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 200,
                                  width: 100,
                                  child: Image(
                                      image: AssetImage('Images/shoe.webp'))),
                              Text('data'),
                              Text('data')
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 150,
                                  width: 200,
                                  child: Image(
                                      image: AssetImage('Images/hat.jpg'))),
                              Text('data'),
                              Text('data')
                            ],
                          )
                        ],
                      )
                      // Expanded(
                      //   child: GridView.builder(
                      //     itemCount: 4,
                      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //         crossAxisCount: 2,
                      //         crossAxisSpacing: 4,
                      //         mainAxisSpacing: 8),
                      //     itemBuilder: (ctx, index) => Container(
                      //         child: Image(
                      //       image: AssetImage('Images/lbag.jpg'),
                      //     )),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
