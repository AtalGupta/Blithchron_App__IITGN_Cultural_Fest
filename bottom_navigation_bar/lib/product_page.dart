import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(228, 227, 233, 1),
      bottomNavigationBar: Container(
        child: Container(
          color: Colors.white,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "499",
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 180.0,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.shopping_cart, color: Colors.white),
                      Text(
                        "Add to cart",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 330,
                      child: Image.asset(
                        // "assets/images/3.jpg",
                            "images/Sample_User_Icon.png",

                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                              ),
                              Badge(
                                  badgeColor: Color.fromRGBO(233, 95, 95, 1),
                                  padding: EdgeInsets.all(7.0),
                                  position: BadgePosition.topStart(
                                      start: 17, top: -12),
                                  badgeContent: Text(
                                    "2",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.black,
                                  )),
                            ]),
                      ),
                    ),
                  ],
                ),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                    ),
                  ),
                  child: ListView(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20.0),
                          child: Text(
                            "Hoodie",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam",
                            style: TextStyle(
                                fontSize: 14.0, color: Colors.grey[700]),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5.0),
                          child: Text(
                            "Color",
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          height: 35,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                width: 32.0,
                                height: 32.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(207, 205, 217, 1),
                                ),
                                margin: EdgeInsets.only(right: 10),
                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(170, 179, 188, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 30.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(186, 152, 124, 1),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 30.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(148, 21, 13, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 7.0),
                          child: Text(
                            "Size",
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left : 15.0,right : 15.0,bottom : 50.0),
                        child: Container(
                          height: 30,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 35.0,
                                height: 35.0,
                                child: Center(
                                    child: Text(
                                  "US",
                                )),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey)),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 35.0,
                                height: 35.0,
                                child: Center(
                                    child: Text(
                                  "S",
                                )),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey)),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 35.0,
                                height: 35.0,
                                child: Center(
                                    child: Text(
                                  "M",
                                )),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey)),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 35.0,
                                height: 35.0,
                                child: Center(
                                    child: Text(
                                  "L",
                                )),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(235, 235, 234, 1),
                                    border:
                                        Border.all(color: Colors.grey)),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 35.0,
                                height: 35.0,
                                child: Center(
                                    child: Text(
                                  "XL",
                                )),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin : EdgeInsets.only(top : 95,right: 25),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(233, 95, 95, 1)),
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.favorite),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}