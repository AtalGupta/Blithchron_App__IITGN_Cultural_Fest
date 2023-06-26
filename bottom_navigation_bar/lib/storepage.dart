import 'package:bottom_navigation_bar/product_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:badges/badges.dart';
// import 'package:my_clothes_app/product_page.dart';

// void main() {
//   runApp(storepage());
// }

// class storepage extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My Clothes App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         fontFamily: "poppins",
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: stotrpage(),
//     );
//   }
// }

class storepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 230, 245, 247),
      appBar: AppBar(
        // backgroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 0, 172, 206),
        elevation: 5,
        title: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   width: 35.0,
              //   height: 35.0,
              //   child: Center(child: Text("B")),
              //   decoration: BoxDecoration(
              //     color: Color.fromARGB(255, 0, 0, 0),
              //     shape: BoxShape.circle,
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     margin: EdgeInsets.symmetric(horizontal: 15.0),
              //     decoration: BoxDecoration(
              //         color: Color.fromRGBO(246, 246, 246, 1),
              //         //color : Colors.red,
              //         borderRadius: BorderRadius.circular(15.0)),
              //     child: TextField(
              //       decoration: InputDecoration(
              //         border: InputBorder.none,
              //         hintText: "Search ...",
              //         prefixIcon: Icon(Icons.search),
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Container(
                  child: Text("Blith Store", style: TextStyle(color: Colors.white, fontSize: 27),),
                ),
              ),
              // Icon(
              //   // Icons.menu,
              //   // Icons.shopping_cart_checkout_sharp,
              //   Icons.shopping_cart_rounded,
              //   color: Colors.black,
              //   size: 30.0,
              // ),
            ],
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          Padding(
            padding:
                // const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Text(
              "Our Exclusive Merchandise",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
          // Container(
          //   height: 30.0,
          //   child: ListView(
          //     shrinkWrap: true,
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       Container(
          //         margin: EdgeInsets.symmetric(horizontal: 15.0),
          //         width: 100,
          //         height: 10,
          //         decoration: BoxDecoration(
          //             color: Colors.black,
          //             borderRadius: BorderRadius.circular(18.0)),
          //         child: Center(
          //             child: Text(
          //           "Popular",
          //           style: TextStyle(color: Colors.white),
          //         )),
          //       ),
          //       Container(
          //         margin: EdgeInsets.symmetric(horizontal: 15.0),
          //         width: 100,
          //         height: 10,
          //         decoration: BoxDecoration(
          //             color: Colors.white,
          //             border: Border.all(color: Colors.black),
          //             borderRadius: BorderRadius.circular(18.0)),
          //         child: Center(
          //             child: Text(
          //           "Mens",
          //           style: TextStyle(color: Colors.black),
          //         )),
          //       ),
          //       Container(
          //         margin: EdgeInsets.symmetric(horizontal: 15.0),
          //         width: 100,
          //         height: 10,
          //         decoration: BoxDecoration(
          //             color: Colors.white,
          //             border: Border.all(color: Colors.black),
          //             borderRadius: BorderRadius.circular(18.0)),
          //         child: Center(
          //             child: Text(
          //           "Womens",
          //           style: TextStyle(color: Colors.black),
          //         )),
          //       ),
          //       Container(
          //         margin: EdgeInsets.symmetric(horizontal: 15.0),
          //         width: 100,
          //         height: 10,
          //         decoration: BoxDecoration(
          //             color: Colors.white,
          //             border: Border.all(color: Colors.black),
          //             borderRadius: BorderRadius.circular(18.0)),
          //         child: Center(
          //             child: Text(
          //           "Mens",
          //           style: TextStyle(color: Colors.black),
          //         )),
          //       ),
          //       Container(
          //         margin: EdgeInsets.symmetric(horizontal: 15.0),
          //         width: 100,
          //         height: 10,
          //         decoration: BoxDecoration(
          //             color: Colors.white,
          //             border: Border.all(color: Colors.black),
          //             borderRadius: BorderRadius.circular(18.0)),
          //         child: Center(
          //             child: Text(
          //           "Womens",
          //           style: TextStyle(color: Colors.black),
          //         )),
          //       ),
          //     ],
          //   ),
          // ),
          GridView.count(
            padding: EdgeInsets.only(top: 20.0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 1,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ProductPage();
                        }));
                      },
                      child: Container(
                          height: 160.0,
                          width: 140.0,
                          child: Image.asset(
                            // "assets/images/2.jpg",
                            "images/Sample_User_Icon.png",
                            height: 100,
                            fit: BoxFit.cover,
                          ),decoration: BoxDecoration(border: Border.all(width: 2)),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Hoodie",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        "499",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 160.0,
                        width: 140.0,
                        child: Image.asset(
                          // "assets/images/3.jpg",
                          "images/Sample_User_Icon.png",
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(border: Border.all(width: 2)),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Hoodie",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        "499",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 160.0,
                        width: 140.0,
                        child: Image.asset(
                          // "assets/images/2.jpg",
                          "images/Sample_User_Icon.png",

                          height: 100,
                          fit: BoxFit.cover,
                        ),decoration: BoxDecoration(border: Border.all(width: 2)),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Hoodie",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        "499",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 160.0,
                        width: 140.0,
                        child: Image.asset(
                          // "assets/images/3.jpg",
                          "images/Sample_User_Icon.png",

                          height: 100,
                          fit: BoxFit.cover,
                        ),decoration: BoxDecoration(border: Border.all(width: 2)),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Hoodie",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        "499",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          child: Badge(
              badgeContent: Text(
                'b',
                style: TextStyle(color: Colors.white),
              ),
              //alignment: Alignment.topRight,
              position: BadgePosition.topStart(start: 25, top: -20),
              borderSide: BorderSide(color: Colors.white),
              padding: EdgeInsets.all(7.0),
              child: Icon(Icons.shopping_cart_outlined)),
        ),
        backgroundColor: Colors.black,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      // bottomNavigationBar: AnimatedBottomNavigationBar(
      //   activeColor: Colors.black,
      //   inactiveColor: Colors.grey,
      //   icons: [
      //     Icons.home,
      //     Icons.explore,
      //     Icons.notifications_active,
      //     Icons.account_circle_outlined
      //   ],
      //   activeIndex: 0,
      //   gapLocation: GapLocation.center,
      //   notchSmoothness: NotchSmoothness.smoothEdge,
      //   onTap: (index) => {},
      //   //other params
      // ),
    );
  }
}
