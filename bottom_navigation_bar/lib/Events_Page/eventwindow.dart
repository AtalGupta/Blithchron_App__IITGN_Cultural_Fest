import 'package:bottom_navigation_bar/Events_Page/config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/Events_Page/eventpage.dart';
import 'package:bottom_navigation_bar/Events_Page/globals.dart';
import 'package:flutter_image/flutter_image.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
// class eventwindow2 extends StatelessWidget {
//   const eventwindow2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Container(
//                     color: Colors.cyanAccent,
//                   ),
//                 ),
//                 Expanded(
//                   child: Container(
//                     color: Colors.white,
//                     margin: EdgeInsets.symmetric(vertical: 80),
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     child: Column(
//                       // ignore: prefer_const_literals_to_create_immutables
//                       children: [
//                         Text(
//                           '"You have to think about one shot. One shot is what it\'s all about." Get Your hands on your PC and be ready to beat the crap out of everyone. SKIRMISH is back in town. Rock and reload, your hands on the enemy head. Prizes worth Rs. 20,000!',
//                           style: TextStyle(fontSize: 20),
//                         ),
//                         const Text(
//                           '\nREGISTRATION DEADLINE: 16 Nov',
//                           style: TextStyle(fontSize: 21, color: Colors.blue),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(top: 40),
//             child: Align(
//               alignment: Alignment.topCenter,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                     icon: Icon(Icons.arrow_back),
//                     onPressed: () {
//                       Navigator.pop(
//                         context,
//                         MaterialPageRoute(builder: (context) => eventpage()),
//                       );
//                     },
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.share),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topCenter,
//             child: Container(
//               margin: EdgeInsets.only(top: 80),
//               height: 300,
//               width: 350,
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 21, 255, 68),
//                 borderRadius: BorderRadius.circular(20),
//                 // ignore: prefer_const_literals_to_create_immutables
//                 boxShadow: shadowList,
//               ),
//               child: Align(
//                 alignment: Alignment.topCenter,
//                 child: Hero(
//                   tag: 2,
//                   child: Image.asset(
//                     'images/skirmish_light(transparentBG)-01.png',
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: Container(
//               height: 100,
//               margin: EdgeInsets.symmetric(horizontal: 35),
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 255, 255, 255),
//                 boxShadow: shadowList,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               // ignore: prefer_const_constructors
//               child: Center(
//                 // ignore: prefer_const_constructors
//                 child: Text(
//                   'Skirmish',
//                   // ignore: prefer_const_constructors
//                   style: TextStyle(
//                       fontSize: 50, color: Color.fromARGB(255, 0, 0, 0)),
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               // margin: EdgeInsets.symmetric(horizontal: 20),
//               // padding: EdgeInsets.symmetric(horizontal: 15),
//               height: 100,
//               // ignore: sort_child_properties_last
//               child: Row(
//                 children: [
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Container(
//                     height: 60,
//                     width: 185,
//                     decoration: BoxDecoration(
//                         color: primaryGreen,
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Center(
//                         child: Text(
//                       'RULEBOOK',
//                       style: TextStyle(color: Colors.white, fontSize: 24),
//                     )),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Container(
//                       height: 60,
//                       decoration: BoxDecoration(
//                           color: primaryGreen,
//                           borderRadius: BorderRadius.circular(20)),
//                       child: Center(
//                           child: Text(
//                         'REGISTER',
//                         style: TextStyle(color: Colors.white, fontSize: 24),
//                       )),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                 ],
//               ),

//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// ignore: camel_case_types
// class eventwindow3 extends StatelessWidget {
//   const eventwindow3({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Container(color: Colors.orangeAccent),
//                 ),
//                 Expanded(
//                   child: Container(
//                     color: Colors.white,
//                     margin: EdgeInsets.symmetric(vertical: 80),
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     child: Column(
//                       // ignore: prefer_const_literals_to_create_immutables
//                       children: [
//                         Text(
//                           'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
//                           style: TextStyle(fontSize: 20),
//                         ),
//                         Text(
//                           '\nREGISTRATION DEADLINE: 20 NOV',
//                           style: TextStyle(fontSize: 21, color: Colors.blue),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(top: 40),
//             child: Align(
//               alignment: Alignment.topCenter,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                       icon: Icon(Icons.arrow_back),
//                       onPressed: () {
//                         Navigator.pop(
//                           context,
//                           MaterialPageRoute(builder: (context) => eventpage()),
//                         );
//                       }),
//                   IconButton(onPressed: () {}, icon: Icon(Icons.share))
//                 ],
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topCenter,
//             child: Container(
//               margin: EdgeInsets.only(top: 80),
//               height: 300,
//               width: 350,
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 56, 161, 226),
//                 borderRadius: BorderRadius.circular(20),
//                 // ignore: prefer_const_literals_to_create_immutables
//                 boxShadow: shadowList,
//               ),
//               child: Align(
//                 alignment: Alignment.topCenter,
//                 child: Hero(
//                   tag: 3,
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                       top: 100.0,
//                       left: 10,
//                       right: 10,
//                     ),
//                     child: Image.asset(
//                       'images/quizzitch-light.png',
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: Container(
//               height: 100,
//               margin: EdgeInsets.symmetric(horizontal: 35),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: shadowList,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               // ignore: prefer_const_constructors
//               child: Center(
//                 // ignore: prefer_const_constructors
//                 child: Text(
//                   'Quizzitch',
//                   // ignore: prefer_const_constructors
//                   style: TextStyle(
//                     fontSize: 40,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               // margin: EdgeInsets.symmetric(horizontal: 20),
//               // padding: EdgeInsets.symmetric(horizontal: 15),
//               height: 100,
//               // ignore: sort_child_properties_last
//               child: Row(
//                 children: [
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Container(
//                     height: 60,
//                     width: 185,
//                     decoration: BoxDecoration(
//                         color: primaryGreen,
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Center(
//                         child: Text(
//                       'RULEBOOK',
//                       style: TextStyle(color: Colors.white, fontSize: 24),
//                     )),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Container(
//                       height: 60,
//                       decoration: BoxDecoration(
//                           color: primaryGreen,
//                           borderRadius: BorderRadius.circular(20)),
//                       child: Center(
//                           child: Text(
//                         'REGISTER',
//                         style: TextStyle(color: Colors.white, fontSize: 24),
//                       )),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                 ],
//               ),

//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

final CollectionReference _links =
    FirebaseFirestore.instance.collection('links');

class eventwindow1 extends StatefulWidget {
  eventwindow1({Key? key}) : super(key: key);

  @override
  State<eventwindow1> createState() => _eventwindow1State();
}

class _eventwindow1State extends State<eventwindow1> {
  // final CollectionReference _links =
  //     FirebaseFirestore.instance.collection('links');

  pressed() {
    var newVal = true;
    if (isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refreshes the page with new value
    setState(() {
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 400,
                        height: MediaQuery.of(context).size.height * 0.5,
                        // color: Colors.amberAccent,
                        color: Color.fromARGB(255, 236, 147, 69),
                      ),
                      Container(
                        color: Colors.white,
                        // margin: EdgeInsets.only(top: 80, bottom: 40),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1,
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // Text(
                            //   'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                            //   style: TextStyle(fontSize: 20),
                            // ),
                            Text(
                              // 'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                              'Antaragnee is about anger, pain, sorrow, surprise, and all the emotions you can show. It\'s about building a plot, filling it up with emotions, raising your voice, and enacting it. Antaragnee is an event that entails theatrical performances in outdoor public spaces and gives you the platform to leave your mark on the general audience.',
                              style: TextStyle(fontSize: 20),
                            ),
                            // Text(
                            //   '\nREGISTRATION DEADLINE: 21 DEC',
                            //   style: TextStyle(fontSize: 21, color: Colors.blue),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(10),
                            // topRight: Radius.circular(10),
                            topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                            topRight: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ),
                        // height: 50,
                        // width: 400,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                          'Photo Collage',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        )),
                      ),
                      imagesgridview(),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 40),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            // color: Colors.amberAccent,
                            color: Color.fromARGB(255, 236, 147, 69),

                            child: IconButton(
                                // iconSize: 30,
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                icon: Icon(Icons.arrow_back),

                                // splashColor: Colors.blue,
                                // splashRadius: 20,
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => eventpage()),
                                  );
                                }),
                          ),
                          // Material(
                          //   color: Colors.amberAccent,
                          //   child: IconButton(
                          //     // color: Colors.yellowAccent,
                          //     // icon: Icon(Icons.favorite, color: (isPressed) ? Colors.blue:Colors.black),
                          //     icon: (isPressed)
                          //         ? Icon(
                          //             Icons.favorite,
                          //             color: Colors.blue,
                          //           )
                          //         : Icon(Icons.favorite_outline),
                          //     // iconSize: 30,
                          //     iconSize:
                          //         MediaQuery.of(context).size.width * 0.075,
                          //     onPressed: () {
                          //       pressed();
                          //     },
                          //   ),
                          // ),
                          StreamBuilder(
                            stream: _links.snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              final QueryDocumentSnapshot<Object?>?
                                  documentSnapshot =
                                  streamSnapshot.data?.docs[0];

                              if (streamSnapshot.hasData) {
                                return IconButton(
                                  onPressed: () async {
                                    final urlPreview =
                                        // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                        documentSnapshot!['reglink'];
                                    final url =
                                        // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                        documentSnapshot['rbooklink'];
                                    await Share.share(
                                        'Register for Antaragnee! ⚡⚡\n\n$urlPreview\n\nRulebook:\n$url');
                                  },
                                  icon: Icon(Icons.share),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      // margin: EdgeInsets.only(top: 80),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1),
                      // height: 300,
                      // width: 350,
                      height: MediaQuery.of(context).size.height * 0.375,
                      width: MediaQuery.of(context).size.width * 0.89,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 100, 39, 131),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: shadowList,
                      ),
                      child: Hero(
                        tag: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            'images/Antaragnee.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // height: 100,
                      // margin: EdgeInsets.only(top: 350, left: 35, right: 35),
                      height: MediaQuery.of(context).size.height * 0.125,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4375,
                          left: MediaQuery.of(context).size.width * 0.0875,
                          right: MediaQuery.of(context).size.width * 0.0875),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Antaragnee',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.blue,
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.green,
              // ),
            ),
          ),
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          StreamBuilder(
              // stream: readLinks(),
              stream: _links.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Text('Something Went Wrong');
                } else if (streamSnapshot.hasData) {
                  // final links = streamSnapshot.data!;
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[0];
                  // final DocumentSnapshot documentSnapshot2 = streamSnapshot.data!.docs[0];
                  // return Row(
                  // children: links.map(buildLink).toList(),);
                  //   );
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 100,
                      // padding: EdgeInsets.only(left: 3.65, right: 3),
                      height: MediaQuery.of(context).size.height * 0.125,

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.009125,
                        right: MediaQuery.of(context).size.width * 0.0075,
                      ),

                      // ignore: sort_child_properties_last
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                  // links.rbooklink;
                                  documentSnapshot['rbooklink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Rulebook will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: primaryGreen,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'RULEBOOK',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                  documentSnapshot['reglink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Registration link will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                        ],
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),

          //  /
          //  /
          //   /                                                                //
          //   /                                                                   //
          //   / / / /
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     // height: 100,
          //     // padding: EdgeInsets.only(left: 3.65, right: 3),
          //     height: MediaQuery.of(context).size.height * 0.125,

          //     padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * 0.009125,
          //       right: MediaQuery.of(context).size.width * 0.0075,
          //     ),

          //     // ignore: sort_child_properties_last
          //     child: Row(
          //       children: [
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: primaryGreen,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'RULEBOOK',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: Colors.blue,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'REGISTER',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //       ],
          //     ),

          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget imagesgridview() => Container(
        // height: 400,
        height: MediaQuery.of(context).size.height * 0.475,
        color: Colors.blueGrey,
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          children: [...myImagesAdapted],
        ),
      );

  final List<Image> myImagesAdapted = [
    Image(
      image: AssetImage('images/IMG_2084.JPG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/IMG_2085.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/IMG_2086.JPG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/IMG_2087.JPG'),
      fit: BoxFit.cover,
    ),
  ];
}

class eventwindow2 extends StatefulWidget {
  eventwindow2({Key? key}) : super(key: key);

  @override
  State<eventwindow2> createState() => _eventwindow2State();
}

class _eventwindow2State extends State<eventwindow2> {
  pressed() {
    var newVal = true;
    if (isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refreshes the page with new value
    setState(() {
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 400,
                        height: MediaQuery.of(context).size.height * 0.5,
                        // color: Colors.amberAccent,
                        color: Color.fromARGB(255, 235, 242, 136),
                      ),
                      Container(
                        color: Colors.white,
                        // margin: EdgeInsets.only(top: 80, bottom: 40),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1,
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              // 'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                              'BlithCube Open, a World Cube Association (WCA) associated cubing event where various cubers spread across India come to IIT Gandhinagar, to compete against each other, make records and most importantly have fun. As the cubing culture is regaining its hype after the long Covid era, so all the cubers! Get ready to restart the old process: eat, sleep, cube, repeat.',
                              style: TextStyle(fontSize: 20),
                            ),
                            // Text(
                            //   '\nREGISTRATION DEADLINE: 21 DEC',
                            //   style: TextStyle(fontSize: 21, color: Colors.blue),
                            // ),
                          ],
                        ),
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     color: Colors.pink,
                      //     borderRadius: BorderRadius.only(
                      //       // topLeft: Radius.circular(10),
                      //       // topRight: Radius.circular(10),
                      //       topLeft: Radius.circular(
                      //         MediaQuery.of(context).size.width * 0.025,
                      //       ),
                      //       topRight: Radius.circular(
                      //         MediaQuery.of(context).size.width * 0.025,
                      //       ),
                      //     ),
                      //   ),
                      //   // height: 50,
                      //   // width: 400,
                      //   height: MediaQuery.of(context).size.height * 0.0625,
                      //   width: MediaQuery.of(context).size.width,
                      //   child: Center(
                      //       child: Text(
                      //     'Photo Collage',
                      //     style: TextStyle(fontSize: 33, color: Colors.white),
                      //   )),
                      // ),
                      // imagesgridview(),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 40),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            // color: Colors.amberAccent,
                            color: Color.fromARGB(255, 235, 242, 136),

                            child: IconButton(
                                // iconSize: 30,
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                icon: Icon(Icons.arrow_back),

                                // splashColor: Colors.blue,
                                // splashRadius: 20,
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => eventpage()),
                                  );
                                }),
                          ),
                          // Material(
                          //   color: Colors.amberAccent,
                          //   child: IconButton(
                          //     // color: Colors.yellowAccent,
                          //     // icon: Icon(Icons.favorite, color: (isPressed) ? Colors.blue:Colors.black),
                          //     icon: (isPressed)
                          //         ? Icon(
                          //             Icons.favorite,
                          //             color: Colors.blue,
                          //           )
                          //         : Icon(Icons.favorite_outline),
                          //     // iconSize: 30,
                          //     iconSize:
                          //         MediaQuery.of(context).size.width * 0.075,
                          //     onPressed: () {
                          //       pressed();
                          //     },
                          //   ),
                          // ),
                          // IconButton(
                          //   onPressed: () async {
                          //     final urlPreview =
                          //         'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                          //     final url =
                          //         'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                          //     await Share.share(
                          //         'Register for Antaragnee! ⚡⚡\n\n$urlPreview\n\nRulebook:\n$url');
                          //   },
                          //   icon: Icon(Icons.share),
                          // ),
                          StreamBuilder(
                            stream: _links.snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              final QueryDocumentSnapshot<Object?>?
                                  documentSnapshot =
                                  streamSnapshot.data?.docs[1];

                              if (streamSnapshot.hasData) {
                                return IconButton(
                                  onPressed: () async {
                                    final urlPreview =
                                        // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                        documentSnapshot!['reglink'];
                                    final url =
                                        // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                        documentSnapshot['rbooklink'];
                                    await Share.share(
                                        'Register for Cubing! ⚡⚡\nYou don\'t want to miss this!\n\nBlithCube Open, a World Cube Association (WCA) associated cubing event where various cubers spread across India come to IIT Gandhinagar, to compete against each other, make records and most importantly have fun. As the cubing culture is regaining its hype after the long Covid era, so all the cubers! Get ready to restart the old process: eat, sleep, cube, repeat.\n\nRegister:\n$urlPreview\n\nRulebook:\n$url');
                                  },
                                  icon: Icon(Icons.share),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  // StreamBuilder(
                  //     stream: _links.snapshots(),
                  //     builder: (context,
                  //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                  //       final QueryDocumentSnapshot<Object?>? documentSnapshot =
                  //           streamSnapshot.data?.docs[1];
                  //       if (streamSnapshot.hasData) {
                  //         if (documentSnapshot!['logo']?.isNotEmpty) {
                  //           return Align(
                  //             alignment: Alignment.topCenter,
                  //             child: Container(
                  //               // margin: EdgeInsets.only(top: 80),
                  //               margin: EdgeInsets.only(
                  //                   top: MediaQuery.of(context).size.height *
                  //                       0.1),
                  //               // height: 300,
                  //               // width: 350,
                  //               height:
                  //                   MediaQuery.of(context).size.height * 0.375,
                  //               width: MediaQuery.of(context).size.width * 0.89,
                  //               decoration: BoxDecoration(
                  //                 // color: Color.fromARGB(255, 100, 39, 131),
                  //                 color: Colors.cyan[500],
                  //                 // borderRadius: BorderRadius.circular(20),
                  //                 borderRadius: BorderRadius.circular(
                  //                     MediaQuery.of(context).size.width * 0.05),
                  //                 // ignore: prefer_const_literals_to_create_immutables
                  //                 boxShadow: shadowList,
                  //               ),
                  //               child: Hero(
                  //                 tag: 2,
                  //                 child: Align(
                  //                   // alignment: Alignment.topCenter,
                  //                   child: CachedNetworkImage(
                  //                     imageUrl: documentSnapshot['logo'],
                  //                     fit: BoxFit.contain,
                  //                     placeholder: (context, url) => Container(
                  //                       color: Colors.cyan[500],
                  //                     ),
                  //                     errorWidget: (context, url, error) =>
                  //                         Container(
                  //                       // color: Colors.black,
                  //                       child: Icon(
                  //                         Icons.error_outline,
                  //                         // color: Colors.black,
                  //                         size: 50,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   // child: Image.network(
                  //                   //   documentSnapshot['logo'],
                  //                   //   fit: BoxFit.contain,
                  //                   // ),
                  //                   // child: Image.asset(
                  //                   //   // 'images/Antaragnee.png',
                  //                   //   'images/user_icon_150670.webp',
                  //                   //   fit: BoxFit.contain,
                  //                   // ),
                  //                 ),
                  //               ),
                  //             ),
                  //           );
                  //           // return Align(
                  //           //   child: Hero(
                  //           //     tag: 2,
                  //           //     child: Padding(
                  //           //       padding: EdgeInsets.only(
                  //           //           top: MediaQuery.of(context).size.width *
                  //           //               0.15,
                  //           //           bottom:
                  //           //               MediaQuery.of(context).size.width *
                  //           //                   0.05),
                  //           //       child: Image.network(
                  //           //         documentSnapshot['logo'],
                  //           //         fit: BoxFit.contain,
                  //           //       ),
                  //           //       // child: Image.asset(
                  //           //       //   'images/user_icon_150670.webp',
                  //           //       // ),
                  //           //     ),
                  //           //   ),
                  //           // );
                  //           // return Image.network(
                  //           //   documentSnapshot['logo'],
                  //           //   fit: BoxFit.contain,
                  //           // );
                  //         } else {
                  //           return
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      // margin: EdgeInsets.only(top: 80),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1),
                      // height: 300,
                      // width: 350,
                      height: MediaQuery.of(context).size.height * 0.375,
                      width: MediaQuery.of(context).size.width * 0.89,
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 100, 39, 131),
                        // color: Colors.cyan[500],
                        color: Color.fromARGB(255, 174, 237, 244),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: shadowList,
                      ),
                      child: Hero(
                        tag: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                // 'images/user_icon_150670.webp',
                                // 'images/logocomingsoon2.PNG',
                                // 'images/logo1.jpg',
                                // 'images/logo2.png',
                                // 'images/logo3.jpg',
                                'images/blith-cube-open.jpg',
                                fit: BoxFit.contain,
                              ),
                            ),
                            // child: Image.asset(
                            //   // 'images/Antaragnee.png',
                            //   'images/user_icon_150670.webp',
                            //   fit: BoxFit.contain,
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // return Align(
                  //   child: Hero(
                  //     tag: 2,
                  //     child: Padding(
                  //       padding: EdgeInsets.only(
                  //           top: MediaQuery.of(context).size.width *
                  //               0.15,
                  //           bottom:
                  //               MediaQuery.of(context).size.width *
                  //                   0.05),
                  //       child: Image.asset(
                  //         'images/user_icon_150670.webp',
                  //       ),
                  //       // child: Image.asset(
                  //       //   'images/user_icon_150670.webp',
                  //       // ),
                  //     ),
                  //   ),
                  //   // return Image.asset(
                  //   //   'images/user_icon_150670.webp',
                  // );
                  //   }
                  // }
                  //   else {
                  //     return CircularProgressIndicator(
                  //       color: Colors.white,
                  //     );
                  //   }
                  // }
                  // // child: Padding(
                  // //   padding: const EdgeInsets.only(top: 8.0),
                  // //   child: FittedBox(
                  // //     fit: BoxFit.scaleDown,
                  // //     child: Text(
                  // //       'Date: TBA',
                  // //       style: TextStyle(
                  // //         fontSize: 22,
                  // //       ),
                  // //     ),
                  // //   ),
                  // // ),
                  // ),
                  // Align(
                  //   alignment: Alignment.topCenter,
                  //   child: Container(
                  //     // margin: EdgeInsets.only(top: 80),
                  //     margin: EdgeInsets.only(
                  //         top: MediaQuery.of(context).size.height * 0.1),
                  //     // height: 300,
                  //     // width: 350,
                  //     height: MediaQuery.of(context).size.height * 0.375,
                  //     width: MediaQuery.of(context).size.width * 0.89,
                  //     decoration: BoxDecoration(
                  //       color: Color.fromARGB(255, 100, 39, 131),
                  //       // borderRadius: BorderRadius.circular(20),
                  //       borderRadius: BorderRadius.circular(
                  //           MediaQuery.of(context).size.width * 0.05),
                  //       // ignore: prefer_const_literals_to_create_immutables
                  //       boxShadow: shadowList,
                  //     ),
                  //     child: Hero(
                  //       tag: 2,
                  //       child: Align(
                  //         alignment: Alignment.topCenter,
                  //         child: Image.asset(
                  //           'images/Antaragnee.png',
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // height: 100,
                      // margin: EdgeInsets.only(top: 350, left: 35, right: 35),
                      height: MediaQuery.of(context).size.height * 0.125,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4375,
                          left: MediaQuery.of(context).size.width * 0.0875,
                          right: MediaQuery.of(context).size.width * 0.0875),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          'BlithCube Open',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.blue,
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.green,
              // ),
            ),
          ),
          StreamBuilder(
              // stream: readLinks(),
              stream: _links.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Text('Something Went Wrong');
                } else if (streamSnapshot.hasData) {
                  // final links = streamSnapshot.data!;
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[1];
                  // final DocumentSnapshot documentSnapshot2 = streamSnapshot.data!.docs[0];
                  // return Row(
                  // children: links.map(buildLink).toList(),);
                  //   );
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 100,
                      // padding: EdgeInsets.only(left: 3.65, right: 3),
                      height: MediaQuery.of(context).size.height * 0.125,

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.009125,
                        right: MediaQuery.of(context).size.width * 0.0075,
                      ),

                      // ignore: sort_child_properties_last
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                  // links.rbooklink;
                                  documentSnapshot['rbooklink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Rulebook will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: primaryGreen,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'RULEBOOK',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                  documentSnapshot['reglink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Registration link will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                        ],
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     // height: 100,
          //     // padding: EdgeInsets.only(left: 3.65, right: 3),
          //     height: MediaQuery.of(context).size.height * 0.125,

          //     padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * 0.009125,
          //       right: MediaQuery.of(context).size.width * 0.0075,
          //     ),

          //     // ignore: sort_child_properties_last
          //     child: Row(
          //       children: [
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://www.worldcubeassociation.org/regulations/#article-9-events';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: primaryGreen,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'RULEBOOK',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: Colors.blue,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'REGISTER',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //       ],
          //     ),

          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget imagesgridview() => Container(
        // height: 400,
        height: MediaQuery.of(context).size.height * 0.475,
        color: Colors.blueGrey,
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          children: [...myImagesAdapted],
        ),
      );

  final List<Image> myImagesAdapted = [
    Image(
      image: AssetImage('images/image1.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/image2.jpeg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/image3.jpeg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/image4.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/image5.jpeg'),
      fit: BoxFit.cover,
    ),
  ];
}

class eventwindow3 extends StatefulWidget {
  eventwindow3({Key? key}) : super(key: key);

  @override
  State<eventwindow3> createState() => _eventwindow3State();
}

class _eventwindow3State extends State<eventwindow3> {
  pressed() {
    var newVal = true;
    if (isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refreshes the page with new value
    setState(() {
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 400,
                        height: MediaQuery.of(context).size.height * 0.5,
                        // color: Colors.amberAccent,
                        color: Color.fromARGB(255, 246, 217, 202),
                      ),
                      Container(
                        color: Colors.white,
                        // margin: EdgeInsets.only(top: 80, bottom: 40),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1,
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // Text(
                            //   'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                            //   style: TextStyle(fontSize: 20),
                            // ),
                            Text(
                              // 'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                              // 'Antaragnee is about anger, pain, sorrow, surprise, and all the emotions you can show. It\'s about building a plot, filling it up with emotions, raising your voice, and enacting it. Antaragnee is an event that entails theatrical performances in outdoor public spaces and gives you the platform to leave your mark on the general audience.',
                              'Euphony is a singing competition that provides a platform for aspiring singers to compete against one another and put their vocal cords to the test. The participants could also give wings to their performance while singing through karaoke or by playing their own instruments. This is your chance to flaunt the nightingale in you, provide a soul to the universe, and life to everything with your singing. May the best singer win!',
                              style: TextStyle(fontSize: 20),
                            ),
                            // Text(
                            //   '\nREGISTRATION DEADLINE: 21 DEC',
                            //   style: TextStyle(fontSize: 21, color: Colors.blue),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(10),
                            // topRight: Radius.circular(10),
                            topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                            topRight: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ),
                        // height: 50,
                        // width: 400,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                          'Photo Collage',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        )),
                      ),
                      imagesgridview(),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 40),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            // color: Colors.amberAccent,
                            color: Color.fromARGB(255, 246, 217, 202),

                            child: IconButton(
                                // iconSize: 30,
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                icon: Icon(Icons.arrow_back),

                                // splashColor: Colors.blue,
                                // splashRadius: 20,
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => eventpage()),
                                  );
                                }),
                          ),
                          // Material(
                          //   color: Colors.amberAccent,
                          //   child: IconButton(
                          //     // color: Colors.yellowAccent,
                          //     // icon: Icon(Icons.favorite, color: (isPressed) ? Colors.blue:Colors.black),
                          //     icon: (isPressed)
                          //         ? Icon(
                          //             Icons.favorite,
                          //             color: Colors.blue,
                          //           )
                          //         : Icon(Icons.favorite_outline),
                          //     // iconSize: 30,
                          //     iconSize:
                          //         MediaQuery.of(context).size.width * 0.075,
                          //     onPressed: () {
                          //       pressed();
                          //     },
                          //   ),
                          // ),
                          // IconButton(
                          //   onPressed: () async {
                          //     final urlPreview =
                          //         'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                          //     final url =
                          //         'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                          //     await Share.share(
                          //         'Register for Antaragnee! ⚡⚡\n\n$urlPreview\n\nRulebook:\n$url');
                          //   },
                          //   icon: Icon(Icons.share),
                          // ),
                          StreamBuilder(
                            stream: _links.snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              final QueryDocumentSnapshot<Object?>?
                                  documentSnapshot =
                                  streamSnapshot.data?.docs[2];

                              if (streamSnapshot.hasData) {
                                return IconButton(
                                  onPressed: () async {
                                    final urlPreview =
                                        // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                        documentSnapshot!['reglink'];
                                    final url =
                                        // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                        documentSnapshot['rbooklink'];
                                    await Share.share(
                                        'Register for Euphony! ⚡⚡\nYou don\'t want to miss this!\n\nEuphony is a singing competition that provides a platform for aspiring singers to compete against one another and put their vocal cords to the test. The participants could also give wings to their performance while singing through karaoke or by playing their own instruments. This is your chance to flaunt the nightingale in you, provide a soul to the universe, and life to everything with your singing. May the best singer win!\n\nRegister:\n$urlPreview\n\nRulebook:\n$url');
                                  },
                                  icon: Icon(Icons.share),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      // margin: EdgeInsets.only(top: 80),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1),
                      // height: 300,
                      // width: 350,
                      height: MediaQuery.of(context).size.height * 0.375,
                      width: MediaQuery.of(context).size.width * 0.89,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 220, 220, 220),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: shadowList,
                      ),
                      child: Hero(
                        tag: 3,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            'images/euphony_light.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // height: 100,
                      // margin: EdgeInsets.only(top: 350, left: 35, right: 35),
                      height: MediaQuery.of(context).size.height * 0.125,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4375,
                          left: MediaQuery.of(context).size.width * 0.0875,
                          right: MediaQuery.of(context).size.width * 0.0875),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Euphony',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.blue,
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.green,
              // ),
            ),
          ),
          StreamBuilder(
              // stream: readLinks(),
              stream: _links.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Text('Something Went Wrong');
                } else if (streamSnapshot.hasData) {
                  // final links = streamSnapshot.data!;
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[2];
                  // final DocumentSnapshot documentSnapshot2 = streamSnapshot.data!.docs[0];
                  // return Row(
                  // children: links.map(buildLink).toList(),);
                  //   );
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 100,
                      // padding: EdgeInsets.only(left: 3.65, right: 3),
                      height: MediaQuery.of(context).size.height * 0.125,

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.009125,
                        right: MediaQuery.of(context).size.width * 0.0075,
                      ),

                      // ignore: sort_child_properties_last
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                  // links.rbooklink;
                                  documentSnapshot['rbooklink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Rulebook will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: primaryGreen,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'RULEBOOK',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                  documentSnapshot['reglink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Registration link will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                        ],
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     // height: 100,
          //     // padding: EdgeInsets.only(left: 3.65, right: 3),
          //     height: MediaQuery.of(context).size.height * 0.125,

          //     padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * 0.009125,
          //       right: MediaQuery.of(context).size.width * 0.0075,
          //     ),

          //     // ignore: sort_child_properties_last
          //     child: Row(
          //       children: [
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: primaryGreen,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'RULEBOOK',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: Colors.blue,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'REGISTER',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //       ],
          //     ),

          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget imagesgridview() => Container(
        // height: 400,
        height: MediaQuery.of(context).size.height * 0.475,
        color: Colors.blueGrey,
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          children: [...myImagesAdapted],
        ),
      );

  final List<Image> myImagesAdapted = [
    Image(
      image: AssetImage('images/Copy of DSC_0160.JPG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/DSC_0166.JPG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/IMG_0773.JPG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/IMG_0959.JPG'),
      fit: BoxFit.cover,
    ),
  ];
}

class eventwindow4 extends StatefulWidget {
  eventwindow4({Key? key}) : super(key: key);

  @override
  State<eventwindow4> createState() => _eventwindow4State();
}

class _eventwindow4State extends State<eventwindow4> {
  pressed() {
    var newVal = true;
    if (isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refreshes the page with new value
    setState(() {
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 400,
                        height: MediaQuery.of(context).size.height * 0.5,
                        // color: Colors.amberAccent,
                        color: Color.fromARGB(255, 181, 71, 70),
                      ),
                      Container(
                        color: Colors.white,
                        // margin: EdgeInsets.only(top: 80, bottom: 40),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1,
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // Text(
                            //   'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                            //   style: TextStyle(fontSize: 20),
                            // ),
                            Text(
                              // 'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                              'Here’s your chance to grab your needles, threads and spools and create magic for our runaway and put up the fashion show of your lifetime. Get ready fashionista’s for Gujarat’s flagship fashion show - “PANACHE”. We’ll be the one with the red carpet.',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 18,
                            )
                            // Text(
                            //   '\nREGISTRATION DEADLINE: 21 DEC',
                            //   style: TextStyle(fontSize: 21, color: Colors.blue),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(10),
                            // topRight: Radius.circular(10),
                            topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                            topRight: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ),
                        // height: 50,
                        // width: 400,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                          'Photo Collage',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        )),
                      ),
                      imagesgridview(),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 40),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            // color: Colors.amberAccent,
                            color: Color.fromARGB(255, 181, 71, 70),
                            child: IconButton(
                                // iconSize: 30,
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                icon: Icon(Icons.arrow_back),

                                // splashColor: Colors.blue,
                                // splashRadius: 20,
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => eventpage()),
                                  );
                                }),
                          ),
                          // Material(
                          //   color: Colors.amberAccent,
                          //   child: IconButton(
                          //     // color: Colors.yellowAccent,
                          //     // icon: Icon(Icons.favorite, color: (isPressed) ? Colors.blue:Colors.black),
                          //     icon: (isPressed)
                          //         ? Icon(
                          //             Icons.favorite,
                          //             color: Colors.blue,
                          //           )
                          //         : Icon(Icons.favorite_outline),
                          //     // iconSize: 30,
                          //     iconSize:
                          //         MediaQuery.of(context).size.width * 0.075,
                          //     onPressed: () {
                          //       pressed();
                          //     },
                          //   ),
                          // ),
                          StreamBuilder(
                            stream: _links.snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              final QueryDocumentSnapshot<Object?>?
                                  documentSnapshot =
                                  streamSnapshot.data?.docs[3];

                              if (streamSnapshot.hasData) {
                                return IconButton(
                                  onPressed: () async {
                                    final urlPreview =
                                        // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                        documentSnapshot!['reglink'];
                                    final url =
                                        // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                        documentSnapshot['rbooklink'];
                                    await Share.share(
                                        'Register for Panache! ⚡⚡\nYou don\'t want to miss this!\n\nHere’s your chance to grab your needles, threads and spools and create magic for our runaway and put up the fashion show of your lifetime. Get ready fashionista’s for Gujarat’s flagship fashion show - “PANACHE”. We’ll be the one with the red carpet.\n\nRegister:\n$urlPreview\n\nRulebook:\n$url');
                                  },
                                  icon: Icon(Icons.share),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                          // IconButton(
                          //   onPressed: () async {
                          //     final urlPreview =
                          //         'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                          //     final url =
                          //         'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                          //     await Share.share(
                          //         'Register for Antaragnee! ⚡⚡\n\n$urlPreview\n\nRulebook:\n$url');
                          //   },
                          //   icon: Icon(Icons.share),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  // StreamBuilder(
                  //     stream: _links.snapshots(),
                  //     builder: (context,
                  //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                  //       final QueryDocumentSnapshot<Object?>? documentSnapshot =
                  //           streamSnapshot.data?.docs[3];
                  //       if (streamSnapshot.hasData) {
                  //         if (documentSnapshot!['logo']?.isNotEmpty) {
                  //           return Align(
                  //             alignment: Alignment.topCenter,
                  //             child: Container(
                  //               // margin: EdgeInsets.only(top: 80),
                  //               margin: EdgeInsets.only(
                  //                   top: MediaQuery.of(context).size.height *
                  //                       0.1),
                  //               // height: 300,
                  //               // width: 350,
                  //               height:
                  //                   MediaQuery.of(context).size.height * 0.375,
                  //               width: MediaQuery.of(context).size.width * 0.89,
                  //               decoration: BoxDecoration(
                  //                 // color: Color.fromARGB(255, 100, 39, 131),
                  //                 color: Colors.green[800],
                  //                 // borderRadius: BorderRadius.circular(20),
                  //                 borderRadius: BorderRadius.circular(
                  //                     MediaQuery.of(context).size.width * 0.05),
                  //                 // ignore: prefer_const_literals_to_create_immutables
                  //                 boxShadow: shadowList,
                  //               ),
                  //               child: Hero(
                  //                 tag: 4,
                  //                 child: Align(
                  //                   // alignment: Alignment.topCenter,
                  //                   child: CachedNetworkImage(
                  //                     imageUrl: documentSnapshot['logo'],
                  //                     fit: BoxFit.contain,
                  //                     placeholder: (context, url) => Container(
                  //                       color: Colors.green[800],
                  //                     ),
                  //                     errorWidget: (context, url, error) =>
                  //                         Container(
                  //                       // color: Colors.black,
                  //                       child: Icon(
                  //                         Icons.error_outline,
                  //                         // color: Colors.black,
                  //                         size: 50,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   // child: Image.network(
                  //                   //   documentSnapshot['logo'],
                  //                   //   fit: BoxFit.contain,
                  //                   // ),
                  //                   // child: Image.asset(
                  //                   //   'images/Antaragnee.png',
                  //                   // ),
                  //                 ),
                  //               ),
                  //             ),
                  //           );
                  //           // return Align(
                  //           //   child: Hero(
                  //           //     tag: 4,
                  //           //     child: Padding(
                  //           //       padding: EdgeInsets.only(
                  //           //           top: MediaQuery.of(context).size.width *
                  //           //               0.15,
                  //           //           bottom:
                  //           //               MediaQuery.of(context).size.width *
                  //           //                   0.05),
                  //           //       child: Image(
                  //           //         image: NetworkImageWithRetry(
                  //           //           documentSnapshot['logo'],
                  //           //           // fit: BoxFit.contain,
                  //           //         ),
                  //           //         fit: BoxFit.contain,
                  //           //       ),
                  //           //       // child: Image.asset(
                  //           //       //   'images/user_icon_150670.webp',
                  //           //       // ),
                  //           //     ),
                  //           //   ),
                  //           // );
                  //           // return Image.network(
                  //           //   documentSnapshot['logo'],
                  //           //   fit: BoxFit.contain,
                  //           // );
                  //         } else {
                  // return
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      // margin: EdgeInsets.only(top: 80),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1),
                      // height: 300,
                      // width: 350,
                      height: MediaQuery.of(context).size.height * 0.375,
                      width: MediaQuery.of(context).size.width * 0.89,
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 100, 39, 131),
                        // color: Colors.green[800],
                        color: Color.fromARGB(255,198, 120, 120),

                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: shadowList,
                      ),
                      child: Hero(
                        tag: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Align(
                            // alignment: Alignment.topCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                // 'images/user_icon_150670.webp',
                                // 'images/logocomingsoon2.PNG',
                                // 'images/logo1.jpg',
                                // 'images/logo2.png',
                                // 'images/logo3.jpg',
                                'images/panache logo light ver final-01 (1).png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        // child: Align(
                        //   alignment: Alignment.topCenter,
                        //   child: Image.asset(
                        //     'images/user_icon_150670.webp',
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                  // return Align(
                  //   child: Hero(
                  //     tag: 4,
                  //     child: Padding(
                  //       padding: EdgeInsets.only(
                  //           top: MediaQuery.of(context).size.width *
                  //               0.15,
                  //           bottom:
                  //               MediaQuery.of(context).size.width *
                  //                   0.05),
                  //       child: Image.asset(
                  //         'images/user_icon_150670.webp',
                  //       ),
                  //       // child: Image.asset(
                  //       //   'images/user_icon_150670.webp',
                  //       // ),
                  //     ),
                  //   ),
                  //   // return Image.asset(
                  //   //   'images/user_icon_150670.webp',
                  // );
                  //     }
                  //   } else {
                  //     return CircularProgressIndicator(
                  //       color: Colors.black,
                  //     );
                  //   }
                  // }
                  // child: Padding(
                  //   padding: const EdgeInsets.only(top: 8.0),
                  //   child: FittedBox(
                  //     fit: BoxFit.scaleDown,
                  //     child: Text(
                  //       'Date: TBA',
                  //       style: TextStyle(
                  //         fontSize: 22,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // ),
                  // Align(
                  //   alignment: Alignment.topCenter,
                  //   child: Container(
                  //     // margin: EdgeInsets.only(top: 80),
                  //     margin: EdgeInsets.only(
                  //         top: MediaQuery.of(context).size.height * 0.1),
                  //     // height: 300,
                  //     // width: 350,
                  //     height: MediaQuery.of(context).size.height * 0.375,
                  //     width: MediaQuery.of(context).size.width * 0.89,
                  //     decoration: BoxDecoration(
                  //       color: Color.fromARGB(255, 100, 39, 131),
                  //       // borderRadius: BorderRadius.circular(20),
                  //       borderRadius: BorderRadius.circular(
                  //           MediaQuery.of(context).size.width * 0.05),
                  //       // ignore: prefer_const_literals_to_create_immutables
                  //       boxShadow: shadowList,
                  //     ),
                  //     child: Hero(
                  //       tag: 4,
                  //       child: Align(
                  //         alignment: Alignment.topCenter,
                  //         child: Image.asset(
                  //           'images/Antaragnee.png',
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // height: 100,
                      // margin: EdgeInsets.only(top: 350, left: 35, right: 35),
                      height: MediaQuery.of(context).size.height * 0.125,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4375,
                          left: MediaQuery.of(context).size.width * 0.0875,
                          right: MediaQuery.of(context).size.width * 0.0875),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Panache',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.blue,
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.green,
              // ),
            ),
          ),
          StreamBuilder(
              // stream: readLinks(),
              stream: _links.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Text('Something Went Wrong');
                } else if (streamSnapshot.hasData) {
                  // final links = streamSnapshot.data!;
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[3];
                  // final DocumentSnapshot documentSnapshot2 = streamSnapshot.data!.docs[0];
                  // return Row(
                  // children: links.map(buildLink).toList(),);
                  //   );
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 100,
                      // padding: EdgeInsets.only(left: 3.65, right: 3),
                      height: MediaQuery.of(context).size.height * 0.125,

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.009125,
                        right: MediaQuery.of(context).size.width * 0.0075,
                      ),

                      // ignore: sort_child_properties_last
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                  // links.rbooklink;
                                  documentSnapshot['rbooklink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Rulebook will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: primaryGreen,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'RULEBOOK',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                  documentSnapshot['reglink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Registration link will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                        ],
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     // height: 100,
          //     // padding: EdgeInsets.only(left: 3.65, right: 3),
          //     height: MediaQuery.of(context).size.height * 0.125,

          //     padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * 0.009125,
          //       right: MediaQuery.of(context).size.width * 0.0075,
          //     ),

          //     // ignore: sort_child_properties_last
          //     child: Row(
          //       children: [
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: primaryGreen,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'RULEBOOK',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: Colors.blue,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'REGISTER',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //       ],
          //     ),

          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget imagesgridview() => Container(
        // height: 400,
        height: MediaQuery.of(context).size.height * 0.475,
        color: Colors.blueGrey,
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          children: [...myImagesAdapted],
        ),
      );

  final List<Image> myImagesAdapted = [
    Image(
      image: AssetImage('images/Panache 132.jpeg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/Panache 2.jpeg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/Panache 3.jpeg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/Panache 4.jpeg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/Panache 5.jpeg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/Panache 6.jpeg'),
      fit: BoxFit.cover,
    ),
  ];
}

class eventwindow5 extends StatefulWidget {
  eventwindow5({Key? key}) : super(key: key);

  @override
  State<eventwindow5> createState() => _eventwindow5State();
}

class _eventwindow5State extends State<eventwindow5> {
  pressed() {
    var newVal = true;
    if (isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refreshes the page with new value
    setState(() {
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 400,
                        height: MediaQuery.of(context).size.height * 0.5,
                        // color: Colors.amberAccent,
                        color: Color.fromARGB(255, 236, 147, 69),
                      ),
                      Container(
                        color: Colors.white,
                        // margin: EdgeInsets.only(top: 80, bottom: 40),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1,
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // Text(
                            //   'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                            //   style: TextStyle(fontSize: 20),
                            // ),
                            Text(
                              // 'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                              'Did you ever while away too much time wondering about pop culture? Did you binge Friends instead of hanging out with your REAL friends, read the history of Old Valyria instead of Indian history, or learnt Harry Potter spells instead of math formulas? If you nodded along all the time while reading this, then you’re in luck. We come back with a new and revamped version of Gujarat’s biggest college pop-culture quiz! Get into your nerdiest mode and start binging so that no one can say “You know nothing”.',
                              style: TextStyle(fontSize: 20),
                            ),
                            // Text(
                            //   '\nREGISTRATION DEADLINE: 21 DEC',
                            //   style: TextStyle(fontSize: 21, color: Colors.blue),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(10),
                            // topRight: Radius.circular(10),
                            topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                            topRight: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ),
                        // height: 50,
                        // width: 400,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                          'Photo Collage',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        )),
                      ),
                      imagesgridview(),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 40),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            // color: Colors.amberAccent,
                            color: Color.fromARGB(255, 236, 147, 69),

                            child: IconButton(
                                // iconSize: 30,
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                icon: Icon(Icons.arrow_back),

                                // splashColor: Colors.blue,
                                // splashRadius: 20,
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => eventpage()),
                                  );
                                }),
                          ),
                          // Material(
                          //   color: Colors.amberAccent,
                          //   child: IconButton(
                          //     // color: Colors.yellowAccent,
                          //     // icon: Icon(Icons.favorite, color: (isPressed) ? Colors.blue:Colors.black),
                          //     icon: (isPressed)
                          //         ? Icon(
                          //             Icons.favorite,
                          //             color: Colors.blue,
                          //           )
                          //         : Icon(Icons.favorite_outline),
                          //     // iconSize: 30,
                          //     iconSize:
                          //         MediaQuery.of(context).size.width * 0.075,
                          //     onPressed: () {
                          //       pressed();
                          //     },
                          //   ),
                          // ),
                          StreamBuilder(
                            stream: _links.snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              final QueryDocumentSnapshot<Object?>?
                                  documentSnapshot =
                                  streamSnapshot.data?.docs[4];

                              if (streamSnapshot.hasData) {
                                return IconButton(
                                  onPressed: () async {
                                    final urlPreview =
                                        // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                        documentSnapshot!['reglink'];
                                    final url =
                                        // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                        documentSnapshot['rbooklink'];
                                    await Share.share(
                                        'Register for Quizzitch! ⚡⚡\nYou don\'t want to miss this!\n\nDid you ever while away too much time wondering about pop culture? Did you binge Friends instead of hanging out with your REAL friends, read the history of Old Valyria instead of Indian history, or learnt Harry Potter spells instead of math formulas? If you nodded along all the time while reading this, then you’re in luck. We come back with a new and revamped version of Gujarat’s biggest college pop-culture quiz! Get into your nerdiest mode and start binging so that no one can say “You know nothing”.\n\nRegister:\n$urlPreview\n\nRulebook:\n$url');
                                  },
                                  icon: Icon(Icons.share),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                          // IconButton(
                          //   onPressed: () async {
                          //     final urlPreview =
                          //         'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                          //     final url =
                          //         'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                          //     await Share.share(
                          //         'Register for Antaragnee! ⚡⚡\n\n$urlPreview\n\nRulebook:\n$url');
                          //   },
                          //   icon: Icon(Icons.share),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      // margin: EdgeInsets.only(top: 80),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1),
                      // height: 300,
                      // width: 350,
                      height: MediaQuery.of(context).size.height * 0.375,
                      width: MediaQuery.of(context).size.width * 0.89,
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 33, 196, 255),
                        color: Color.fromARGB(255, 244, 239, 59),

                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: shadowList,
                      ),
                      child: Hero(
                        tag: 5,
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            // 'images/quizzitch-light (1).png',
                            'images/Quizzitch-02.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // height: 100,
                      // margin: EdgeInsets.only(top: 350, left: 35, right: 35),
                      height: MediaQuery.of(context).size.height * 0.125,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4375,
                          left: MediaQuery.of(context).size.width * 0.0875,
                          right: MediaQuery.of(context).size.width * 0.0875),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Quizzitch',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.blue,
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.green,
              // ),
            ),
          ),
          StreamBuilder(
              // stream: readLinks(),
              stream: _links.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Text('Something Went Wrong');
                } else if (streamSnapshot.hasData) {
                  // final links = streamSnapshot.data!;
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[4];
                  // final DocumentSnapshot documentSnapshot2 = streamSnapshot.data!.docs[0];
                  // return Row(
                  // children: links.map(buildLink).toList(),);
                  //   );
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 100,
                      // padding: EdgeInsets.only(left: 3.65, right: 3),
                      height: MediaQuery.of(context).size.height * 0.125,

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.009125,
                        right: MediaQuery.of(context).size.width * 0.0075,
                      ),

                      // ignore: sort_child_properties_last
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                  // links.rbooklink;
                                  documentSnapshot['rbooklink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Rulebook will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: primaryGreen,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'RULEBOOK',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                  documentSnapshot['reglink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Registration link will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                        ],
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     // height: 100,
          //     // padding: EdgeInsets.only(left: 3.65, right: 3),
          //     height: MediaQuery.of(context).size.height * 0.125,

          //     padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * 0.009125,
          //       right: MediaQuery.of(context).size.width * 0.0075,
          //     ),

          //     // ignore: sort_child_properties_last
          //     child: Row(
          //       children: [
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: primaryGreen,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'RULEBOOK',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: Colors.blue,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'REGISTER',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //       ],
          //     ),

          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget imagesgridview() => Container(
        // height: 400,
        height: MediaQuery.of(context).size.height * 0.475,
        color: Colors.blueGrey,
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          children: [...myImagesAdapted],
        ),
      );

  final List<Image> myImagesAdapted = [
    Image(
      image: AssetImage('images/IMG_0563.JPG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/IMG_20220320_121516.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/IMG-20220320-WA0021.jpg'),
      fit: BoxFit.cover,
    ),
  ];
}

class eventwindow6 extends StatefulWidget {
  eventwindow6({Key? key}) : super(key: key);

  @override
  State<eventwindow6> createState() => _eventwindow6State();
}

class _eventwindow6State extends State<eventwindow6> {
  pressed() {
    var newVal = true;
    if (isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refreshes the page with new value
    setState(() {
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 400,
                        height: MediaQuery.of(context).size.height * 0.5,
                        // color: Colors.amberAccent,
                        color: Color.fromARGB(255, 75, 126, 231),
                      ),
                      Container(
                        color: Colors.white,
                        // margin: EdgeInsets.only(top: 80, bottom: 40),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1,
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // Text(
                            //   'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                            //   style: TextStyle(fontSize: 20),
                            // ),
                            Text(
                              // 'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                              'A spray-paint based graffiti event, where you can channelise your inner artist and leave your mark on Blithchron.',
                              style: TextStyle(fontSize: 20),
                            ),
                            // Text(
                            //   '\nREGISTRATION DEADLINE: 21 DEC',
                            //   style: TextStyle(fontSize: 21, color: Colors.blue),
                            // ),
                          ],
                        ),
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     color: Colors.black,
                      //     borderRadius: BorderRadius.only(
                      //       // topLeft: Radius.circular(10),
                      //       // topRight: Radius.circular(10),
                      //       topLeft: Radius.circular(
                      //         MediaQuery.of(context).size.width * 0.025,
                      //       ),
                      //       topRight: Radius.circular(
                      //         MediaQuery.of(context).size.width * 0.025,
                      //       ),
                      //     ),
                      //   ),
                      //   // height: 50,
                      //   // width: 400,
                      //   height: MediaQuery.of(context).size.height * 0.0625,
                      //   width: MediaQuery.of(context).size.width,
                      //   child: Center(
                      //       child: Text(
                      //     'Photo Collage',
                      //     style: TextStyle(fontSize: 33, color: Colors.white),
                      //   )),
                      // ),
                      // imagesgridview(),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 40),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            // color: Colors.amberAccent,
                            color: Color.fromARGB(255, 75, 126, 231),

                            // color: Color.fromARGB(255,236, 147, 69),
                            child: IconButton(
                                // iconSize: 30,
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                icon: Icon(Icons.arrow_back),

                                // splashColor: Colors.blue,
                                // splashRadius: 20,
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => eventpage()),
                                  );
                                }),
                          ),
                          // Material(
                          //   color: Colors.amberAccent,
                          //   child: IconButton(
                          //     // color: Colors.yellowAccent,
                          //     // icon: Icon(Icons.favorite, color: (isPressed) ? Colors.blue:Colors.black),
                          //     icon: (isPressed)
                          //         ? Icon(
                          //             Icons.favorite,
                          //             color: Colors.blue,
                          //           )
                          //         : Icon(Icons.favorite_outline),
                          //     // iconSize: 30,
                          //     iconSize:
                          //         MediaQuery.of(context).size.width * 0.075,
                          //     onPressed: () {
                          //       pressed();
                          //     },
                          //   ),
                          // ),
                          StreamBuilder(
                            stream: _links.snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              final QueryDocumentSnapshot<Object?>?
                                  documentSnapshot =
                                  streamSnapshot.data?.docs[5];

                              if (streamSnapshot.hasData) {
                                return IconButton(
                                  onPressed: () async {
                                    final urlPreview =
                                        // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                        documentSnapshot!['reglink'];
                                    final url =
                                        // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                        documentSnapshot['rbooklink'];
                                    await Share.share(
                                        'Register for Aerosol! ⚡⚡\nYou don\'t want to miss this!\n\nA spray-paint based graffiti event, where you can channelise your inner artist and leave your mark on Blithchron.\n\nRegister:\n$urlPreview\n\nRulebook:\n$url');
                                  },
                                  icon: Icon(Icons.share),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                          // IconButton(
                          //   onPressed: () async {
                          //     final urlPreview =
                          //         'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                          //     final url =
                          //         'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                          //     await Share.share(
                          //         'Register for Antaragnee! ⚡⚡\n\n$urlPreview\n\nRulebook:\n$url');
                          //   },
                          //   icon: Icon(Icons.share),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      // margin: EdgeInsets.only(top: 80),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1),
                      // height: 300,
                      // width: 350,
                      height: MediaQuery.of(context).size.height * 0.375,
                      width: MediaQuery.of(context).size.width * 0.89,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 44, 210, 157),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: shadowList,
                      ),
                      child: Hero(
                        tag: 6,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset(
                              'images/Aerosol Logo.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // height: 100,
                      // margin: EdgeInsets.only(top: 350, left: 35, right: 35),
                      height: MediaQuery.of(context).size.height * 0.125,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4375,
                          left: MediaQuery.of(context).size.width * 0.0875,
                          right: MediaQuery.of(context).size.width * 0.0875),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Aerosol',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.blue,
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.green,
              // ),
            ),
          ),
          StreamBuilder(
              // stream: readLinks(),
              stream: _links.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Text('Something Went Wrong');
                } else if (streamSnapshot.hasData) {
                  // final links = streamSnapshot.data!;
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[5];
                  // final DocumentSnapshot documentSnapshot2 = streamSnapshot.data!.docs[0];
                  // return Row(
                  // children: links.map(buildLink).toList(),);
                  //   );
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 100,
                      // padding: EdgeInsets.only(left: 3.65, right: 3),
                      height: MediaQuery.of(context).size.height * 0.125,

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.009125,
                        right: MediaQuery.of(context).size.width * 0.0075,
                      ),

                      // ignore: sort_child_properties_last
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                  // links.rbooklink;
                                  documentSnapshot['rbooklink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Rulebook will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: primaryGreen,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'RULEBOOK',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                  documentSnapshot['reglink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Registration link will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                        ],
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     // height: 100,
          //     // padding: EdgeInsets.only(left: 3.65, right: 3),
          //     height: MediaQuery.of(context).size.height * 0.125,

          //     padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * 0.009125,
          //       right: MediaQuery.of(context).size.width * 0.0075,
          //     ),

          //     // ignore: sort_child_properties_last
          //     child: Row(
          //       children: [
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //               color: primaryGreen,
          //               borderRadius: BorderRadius.circular(
          //                   MediaQuery.of(context).size.width * 0.05),
          //             ),
          //             child: Center(
          //                 child: Text(
          //               'RULEBOOK',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: Colors.blue,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'REGISTER',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //       ],
          //     ),

          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget imagesgridview() => Container(
        // height: 400,
        height: MediaQuery.of(context).size.height * 0.475,
        color: Colors.blueGrey,
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 1,
          children: [...myImagesAdapted],
        ),
      );

  final List<Image> myImagesAdapted = [
    Image(
      image: AssetImage('images/reverb2.PNG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/reverb3.png'),
      fit: BoxFit.cover,
    ),
  ];
}

class eventwindow7 extends StatefulWidget {
  eventwindow7({Key? key}) : super(key: key);

  @override
  State<eventwindow7> createState() => _eventwindow7State();
}

class _eventwindow7State extends State<eventwindow7> {
  pressed() {
    var newVal = true;
    if (isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refreshes the page with new value
    setState(() {
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 400,
                        height: MediaQuery.of(context).size.height * 0.5,
                        // color: Colors.amberAccent,
                        color: Color.fromARGB(255, 84, 70, 209),
                      ),
                      Container(
                        color: Colors.white,
                        // margin: EdgeInsets.only(top: 80, bottom: 40),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1,
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // Text(
                            //   'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                            //   style: TextStyle(fontSize: 20),
                            // ),
                            Text(
                              // 'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                              '"Prepare for hellfire!" \n\nMove in the camps, get your hands on the device and let\'s begin the hunt. "War has changed"; as it\'s only gonna get bigger and better. "Take it easy, as there\'s only gonna be one hero"\n\n"Endure and Survive", as blithchron brings to you the Flagship gaming event SKIRMISH, with prizes worth Rs 20,000.',
                              style: TextStyle(fontSize: 20),
                            ),
                            // Text(
                            //   '\nREGISTRATION DEADLINE: 21 DEC',
                            //   style: TextStyle(fontSize: 21, color: Colors.blue),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(10),
                            // topRight: Radius.circular(10),
                            topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                            topRight: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ),
                        // height: 50,
                        // width: 400,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                          'Photo Collage',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        )),
                      ),
                      imagesgridview(),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 40),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            // color: Colors.amberAccent,
                            color: Color.fromARGB(255, 84, 70, 209),

                            child: IconButton(
                                // iconSize: 30,
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                icon: Icon(Icons.arrow_back),

                                // splashColor: Colors.blue,
                                // splashRadius: 20,
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => eventpage()),
                                  );
                                }),
                          ),
                          // Material(
                          //   color: Colors.amberAccent,
                          //   child: IconButton(
                          //     // color: Colors.yellowAccent,
                          //     // icon: Icon(Icons.favorite, color: (isPressed) ? Colors.blue:Colors.black),
                          //     icon: (isPressed)
                          //         ? Icon(
                          //             Icons.favorite,
                          //             color: Colors.blue,
                          //           )
                          //         : Icon(Icons.favorite_outline),
                          //     // iconSize: 30,
                          //     iconSize:
                          //         MediaQuery.of(context).size.width * 0.075,
                          //     onPressed: () {
                          //       pressed();
                          //     },
                          //   ),
                          // ),
                          StreamBuilder(
                            stream: _links.snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              final QueryDocumentSnapshot<Object?>?
                                  documentSnapshot =
                                  streamSnapshot.data?.docs[6];

                              if (streamSnapshot.hasData) {
                                return IconButton(
                                  onPressed: () async {
                                    final urlPreview =
                                        // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                        documentSnapshot!['reglink'];
                                    final url =
                                        // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                        documentSnapshot['rbooklink'];
                                    await Share.share(
                                        'Register for Skirmish! ⚡⚡\nYou don\'t want to miss this!\n\n"Prepare for hellfire!" \n\nMove in the camps, get your hands on the device and let\'s begin the hunt. "War has changed"; as we are going offline this time, it\'s only gonna get bigger and better. "Take it easy, as there\'s only gonna be one hero"\n\n"Endure and Survive", as blithchron brings to you the Flagship gaming event SKIRMISH, with prizes worth Rs  XXXX.\n\nRegister:\n$urlPreview\n\nRulebook:\n$url');
                                  },
                                  icon: Icon(Icons.share),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                          // IconButton(
                          //   onPressed: () async {
                          //     final urlPreview =
                          //         'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                          //     final url =
                          //         'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                          //     await Share.share(
                          //         'Register for Antaragnee! ⚡⚡\n\n$urlPreview\n\nRulebook:\n$url');
                          //   },
                          //   icon: Icon(Icons.share),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      // margin: EdgeInsets.only(top: 80),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1),
                      // height: 300,
                      // width: 350,
                      height: MediaQuery.of(context).size.height * 0.375,
                      width: MediaQuery.of(context).size.width * 0.89,
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 129, 0, 194),
                        color: Colors.cyan,
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: shadowList,
                      ),
                      child: Hero(
                        tag: 7,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            // 'images/Skrimish Dark logo.png',
                            'images/hahaha.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // height: 100,
                      // margin: EdgeInsets.only(top: 350, left: 35, right: 35),
                      height: MediaQuery.of(context).size.height * 0.125,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4375,
                          left: MediaQuery.of(context).size.width * 0.0875,
                          right: MediaQuery.of(context).size.width * 0.0875),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Skirmish',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.blue,
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.green,
              // ),
            ),
          ),
          StreamBuilder(
              // stream: readLinks(),
              stream: _links.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Text('Something Went Wrong');
                } else if (streamSnapshot.hasData) {
                  // final links = streamSnapshot.data!;
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[6];
                  // final DocumentSnapshot documentSnapshot2 = streamSnapshot.data!.docs[0];
                  // return Row(
                  // children: links.map(buildLink).toList(),);
                  //   );
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 100,
                      // padding: EdgeInsets.only(left: 3.65, right: 3),
                      height: MediaQuery.of(context).size.height * 0.125,

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.009125,
                        right: MediaQuery.of(context).size.width * 0.0075,
                      ),

                      // ignore: sort_child_properties_last
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                  // links.rbooklink;
                                  documentSnapshot['rbooklink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Rulebook will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: primaryGreen,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'RULEBOOK',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                  documentSnapshot['reglink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Registration link will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                        ],
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     // height: 100,
          //     // padding: EdgeInsets.only(left: 3.65, right: 3),
          //     height: MediaQuery.of(context).size.height * 0.125,

          //     padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * 0.009125,
          //       right: MediaQuery.of(context).size.width * 0.0075,
          //     ),

          //     // ignore: sort_child_properties_last
          //     child: Row(
          //       children: [
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: primaryGreen,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'RULEBOOK',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: Colors.blue,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'REGISTER',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //       ],
          //     ),

          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget imagesgridview() => Container(
        // height: 400,
        height: MediaQuery.of(context).size.height * 0.475,
        color: Colors.blueGrey,
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          children: [...myImagesAdapted],
        ),
      );

  final List<Image> myImagesAdapted = [
    Image(
      image: AssetImage('images/CSGO\'20-2.JPG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/CSGO\'20.JPG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/FIFA \'22.jpg'),
      fit: BoxFit.cover,
    ),
  ];
}

class eventwindow8 extends StatefulWidget {
  eventwindow8({Key? key}) : super(key: key);

  @override
  State<eventwindow8> createState() => _eventwindow8State();
}

class _eventwindow8State extends State<eventwindow8> {
  pressed() {
    var newVal = true;
    if (isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refreshes the page with new value
    setState(() {
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 400,
                        height: MediaQuery.of(context).size.height * 0.5,
                        // color: Colors.amberAccent,
                            color: Color.fromARGB(255,227, 7, 79),

                      ),
                      Container(
                        color: Colors.white,
                        // margin: EdgeInsets.only(top: 80, bottom: 40),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1,
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // Text(
                            //   'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                            //   style: TextStyle(fontSize: 20),
                            // ),
                            Text(
                              // 'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                              'Got a knack for dancing but not getting the room to express your talent? \n\nNo need to worry as the stage has been set for you. Blithchron’23 brings to you, a solo dancing event, consisting of various rounds so you can showcase best of your skills.',
                              style: TextStyle(fontSize: 20),
                            ),
                            // Text(
                            //   '\nREGISTRATION DEADLINE: 21 DEC',
                            //   style: TextStyle(fontSize: 21, color: Colors.blue),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(10),
                            // topRight: Radius.circular(10),
                            topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                            topRight: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ),
                        // height: 50,
                        // width: 400,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                          'Photo Collage',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        )),
                      ),
                      imagesgridview(),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 40),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            // color: Colors.amberAccent,
                            color: Color.fromARGB(255,227, 7, 79),
                            child: IconButton(
                                // iconSize: 30,
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                icon: Icon(Icons.arrow_back),

                                // splashColor: Colors.blue,
                                // splashRadius: 20,
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => eventpage()),
                                  );
                                }),
                          ),
                          // Material(
                          //   color: Colors.amberAccent,
                          //   child: IconButton(
                          //     // color: Colors.yellowAccent,
                          //     // icon: Icon(Icons.favorite, color: (isPressed) ? Colors.blue:Colors.black),
                          //     icon: (isPressed)
                          //         ? Icon(
                          //             Icons.favorite,
                          //             color: Colors.blue,
                          //           )
                          //         : Icon(Icons.favorite_outline),
                          //     // iconSize: 30,
                          //     iconSize:
                          //         MediaQuery.of(context).size.width * 0.075,
                          //     onPressed: () {
                          //       pressed();
                          //     },
                          //   ),
                          // ),
                          StreamBuilder(
                            stream: _links.snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              final QueryDocumentSnapshot<Object?>?
                                  documentSnapshot =
                                  streamSnapshot.data?.docs[7];

                              if (streamSnapshot.hasData) {
                                return IconButton(
                                  onPressed: () async {
                                    final urlPreview =
                                        // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                        documentSnapshot!['reglink'];
                                    final url =
                                        // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                        documentSnapshot['rbooklink'];
                                    await Share.share(
                                        'Register for Street Beat! ⚡⚡\nYou don\'t want to miss this!\n\nGot a knack for dancing but not getting the room to express your talent? \n\nNo need to worry as the stage has been set for you. Blithchron’23 brings to you, a solo dancing event, consisting of various rounds so you can showcase best of your skills.\n\nRegister:\n$urlPreview\n\nRulebook:\n$url');
                                  },
                                  icon: Icon(Icons.share),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                          // IconButton(
                          //   onPressed: () async {
                          //     final urlPreview =
                          //         'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                          //     final url =
                          //         'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                          //     await Share.share(
                          //         'Register for Antaragnee! ⚡⚡\n\n$urlPreview\n\nRulebook:\n$url');
                          //   },
                          //   icon: Icon(Icons.share),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  // StreamBuilder(
                  //     stream: _links.snapshots(),
                  //     builder: (context,
                  //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                  //       final QueryDocumentSnapshot<Object?>? documentSnapshot =
                  //           streamSnapshot.data?.docs[7];
                  //       if (streamSnapshot.hasData) {
                  //         if (documentSnapshot!['logo']?.isNotEmpty) {
                  //           return Align(
                  //             alignment: Alignment.topCenter,
                  //             child: Container(
                  //               // margin: EdgeInsets.only(top: 80),
                  //               margin: EdgeInsets.only(
                  //                   top: MediaQuery.of(context).size.height *
                  //                       0.1),
                  //               // height: 300,
                  //               // width: 350,
                  //               height:
                  //                   MediaQuery.of(context).size.height * 0.375,
                  //               width: MediaQuery.of(context).size.width * 0.89,
                  //               decoration: BoxDecoration(
                  //                 color: Colors.pink[500],
                  //                 // borderRadius: BorderRadius.circular(20),
                  //                 borderRadius: BorderRadius.circular(
                  //                     MediaQuery.of(context).size.width * 0.05),
                  //                 // ignore: prefer_const_literals_to_create_immutables
                  //                 boxShadow: shadowList,
                  //               ),
                  //               child: Hero(
                  //                 tag: 8,
                  //                 child: Align(
                  //                   // alignment: Alignment.topCenter,
                  //                   child: CachedNetworkImage(
                  //                     imageUrl: documentSnapshot['logo'],
                  //                     fit: BoxFit.contain,
                  //                     placeholder: (context, url) => Container(
                  //                       color: Colors.pink[500],
                  //                     ),
                  //                     errorWidget: (context, url, error) =>
                  //                         Container(
                  //                       // color: Colors.black,
                  //                       child: Icon(
                  //                         Icons.error_outline,
                  //                         // color: Colors.black,
                  //                         size: 50,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   // child: Image.network(
                  //                   //   documentSnapshot['logo'],
                  //                   //   fit: BoxFit.contain,
                  //                   // ),
                  //                   // child: Image.asset(
                  //                   //   'images/Antaragnee.png',
                  //                   // ),
                  //                 ),
                  //               ),
                  //             ),
                  //           );
                  //           // return Align(
                  //           //   child: Hero(
                  //           //     tag: 8,
                  //           //     child: Padding(
                  //           //       padding: EdgeInsets.only(
                  //           //           top: MediaQuery.of(context).size.width *
                  //           //               0.15,
                  //           //           bottom:
                  //           //               MediaQuery.of(context).size.width *
                  //           //                   0.05),
                  //           //       child: Image(
                  //           //         image: NetworkImageWithRetry(
                  //           //           documentSnapshot['logo'],
                  //           //           // fit: BoxFit.contain,
                  //           //         ),
                  //           //         fit: BoxFit.contain,
                  //           //       ),
                  //           //       // child: Image.asset(
                  //           //       //   'images/user_icon_150670.webp',
                  //           //       // ),
                  //           //     ),
                  //           //   ),
                  //           // );
                  //           // return Image.network(
                  //           //   documentSnapshot['logo'],
                  //           //   fit: BoxFit.contain,
                  //           // );
                  //         } else {
                  // return
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      // margin: EdgeInsets.only(top: 80),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1),
                      // height: 300,
                      // width: 350,
                      height: MediaQuery.of(context).size.height * 0.375,
                      width: MediaQuery.of(context).size.width * 0.89,
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 100, 39, 131),
                        color: Colors.indigo[500],
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: shadowList,
                      ),
                      child: Hero(
                        tag: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                // 'images/user_icon_150670.webp',
                                // 'images/logocomingsoon2.PNG',
                                // 'images/logo1.jpg',
                                // 'images/logo2.png',
                                // 'images/logo3.jpg',
                                // 'images/streetbeat.png',
                              'images/StreetBeat Logo White font-8.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            // child: Image.asset(
                            //   'images/user_icon_150670.webp',
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // return Align(
                  //   child: Hero(
                  //     tag: 4,
                  //     child: Padding(
                  //       padding: EdgeInsets.only(
                  //           top: MediaQuery.of(context).size.width *
                  //               0.15,
                  //           bottom:
                  //               MediaQuery.of(context).size.width *
                  //                   0.05),
                  //       child: Image.asset(
                  //         'images/user_icon_150670.webp',
                  //       ),
                  //       // child: Image.asset(
                  //       //   'images/user_icon_150670.webp',
                  //       // ),
                  //     ),
                  //   ),
                  //   // return Image.asset(
                  //   //   'images/user_icon_150670.webp',
                  // );
                  //     }
                  //   } else {
                  //     return CircularProgressIndicator(
                  //       color: Colors.black,
                  //     );
                  //   }
                  // }
                  // child: Padding(
                  //   padding: const EdgeInsets.only(top: 8.0),
                  //   child: FittedBox(
                  //     fit: BoxFit.scaleDown,
                  //     child: Text(
                  //       'Date: TBA',
                  //       style: TextStyle(
                  //         fontSize: 22,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // ),
                  // Align(
                  //   alignment: Alignment.topCenter,
                  //   child: Container(
                  //     // margin: EdgeInsets.only(top: 80),
                  //     margin: EdgeInsets.only(
                  //         top: MediaQuery.of(context).size.height * 0.1),
                  //     // height: 300,
                  //     // width: 350,
                  //     height: MediaQuery.of(context).size.height * 0.375,
                  //     width: MediaQuery.of(context).size.width * 0.89,
                  //     decoration: BoxDecoration(
                  //       color: Color.fromARGB(255, 100, 39, 131),
                  //       // borderRadius: BorderRadius.circular(20),
                  //       borderRadius: BorderRadius.circular(
                  //           MediaQuery.of(context).size.width * 0.05),
                  //       // ignore: prefer_const_literals_to_create_immutables
                  //       boxShadow: shadowList,
                  //     ),
                  //     child: Hero(
                  //       tag: 8,
                  //       child: Align(
                  //         alignment: Alignment.topCenter,
                  //         child: Image.asset(
                  //           'images/Antaragnee.png',
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // height: 100,
                      // margin: EdgeInsets.only(top: 350, left: 35, right: 35),
                      height: MediaQuery.of(context).size.height * 0.125,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4375,
                          left: MediaQuery.of(context).size.width * 0.0875,
                          right: MediaQuery.of(context).size.width * 0.0875),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Street Beat',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.blue,
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.green,
              // ),
            ),
          ),
          StreamBuilder(
              // stream: readLinks(),
              stream: _links.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Text('Something Went Wrong');
                } else if (streamSnapshot.hasData) {
                  // final links = streamSnapshot.data!;
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[7];
                  // final DocumentSnapshot documentSnapshot2 = streamSnapshot.data!.docs[0];
                  // return Row(
                  // children: links.map(buildLink).toList(),);
                  //   );
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 100,
                      // padding: EdgeInsets.only(left: 3.65, right: 3),
                      height: MediaQuery.of(context).size.height * 0.125,

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.009125,
                        right: MediaQuery.of(context).size.width * 0.0075,
                      ),

                      // ignore: sort_child_properties_last
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                  // links.rbooklink;
                                  documentSnapshot['rbooklink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Rulebook will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: primaryGreen,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'RULEBOOK',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                  documentSnapshot['reglink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Registration link will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                        ],
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     // height: 100,
          //     // padding: EdgeInsets.only(left: 3.65, right: 3),
          //     height: MediaQuery.of(context).size.height * 0.125,

          //     padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * 0.009125,
          //       right: MediaQuery.of(context).size.width * 0.0075,
          //     ),

          //     // ignore: sort_child_properties_last
          //     child: Row(
          //       children: [
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: primaryGreen,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'RULEBOOK',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: Colors.blue,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'REGISTER',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //       ],
          //     ),

          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget imagesgridview() => Container(
        // height: 400,
        height: MediaQuery.of(context).size.height * 0.475,
        color: Colors.blueGrey,
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          children: [...myImagesAdapted],
        ),
      );

  final List<Image> myImagesAdapted = [
    Image(
      image: AssetImage('images/IMG-20221021-WA0018.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/IMG-20221021-WA0020.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/IMG-20221021-WA0021.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/IMG-20221021-WA0022.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/IMG-20221021-WA0023.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/IMG-20221021-WA0025.jpg'),
      fit: BoxFit.cover,
    ),
  ];
}

class eventwindow9 extends StatefulWidget {
  eventwindow9({Key? key}) : super(key: key);

  @override
  State<eventwindow9> createState() => _eventwindow9State();
}

class _eventwindow9State extends State<eventwindow9> {
  pressed() {
    var newVal = true;
    if (isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refreshes the page with new value
    setState(() {
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 400,
                        height: MediaQuery.of(context).size.height * 0.5,
                        // color: Colors.amberAccent,
                            color: Color.fromARGB(255,90, 63, 178),

                      ),
                      Container(
                        color: Colors.white,
                        // margin: EdgeInsets.only(top: 80, bottom: 40),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1,
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // Text(
                            //   'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                            //   style: TextStyle(fontSize: 20),
                            // ),
                            Text(
                              // 'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                              'Your groove game on, we are bringing the stage to you. Time to get out of the world of recording submission and perform live on the stage. Perform alone or make the stage throb with your group, it’s your choice. That’s not all, you get a chance to win prizes worth Rs. 30,000',
                              style: TextStyle(fontSize: 20),
                            ),
                            // Text(
                            //   '\nREGISTRATION DEADLINE: 21 DEC',
                            //   style: TextStyle(fontSize: 21, color: Colors.blue),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(10),
                            // topRight: Radius.circular(10),
                            topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                            topRight: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ),
                        // height: 50,
                        // width: 400,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                          'Photo Collage',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        )),
                      ),
                      imagesgridview(),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 40),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            // color: Colors.amberAccent,
                            color: Color.fromARGB(255,90, 63, 178),
                            child: IconButton(
                                // iconSize: 30,
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                icon: Icon(Icons.arrow_back),

                                // splashColor: Colors.blue,
                                // splashRadius: 20,
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => eventpage()),
                                  );
                                }),
                          ),
                          // Material(
                          //   color: Colors.amberAccent,
                          //   child: IconButton(
                          //     // color: Colors.yellowAccent,
                          //     // icon: Icon(Icons.favorite, color: (isPressed) ? Colors.blue:Colors.black),
                          //     icon: (isPressed)
                          //         ? Icon(
                          //             Icons.favorite,
                          //             color: Colors.blue,
                          //           )
                          //         : Icon(Icons.favorite_outline),
                          //     // iconSize: 30,
                          //     iconSize:
                          //         MediaQuery.of(context).size.width * 0.075,
                          //     onPressed: () {
                          //       pressed();
                          //     },
                          //   ),
                          // ),
                          StreamBuilder(
                            stream: _links.snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              final QueryDocumentSnapshot<Object?>?
                                  documentSnapshot =
                                  streamSnapshot.data?.docs[8];

                              if (streamSnapshot.hasData) {
                                return IconButton(
                                  onPressed: () async {
                                    final urlPreview =
                                        // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                        documentSnapshot!['reglink'];
                                    final url =
                                        // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                        documentSnapshot['rbooklink'];
                                    await Share.share(
                                        'Register for String Theory! ⚡⚡\nYou don\'t want to miss this!\n\nYour groove game on, we are bringing the stage to you. Time to get out of the world of recording submission and perform live on the stage. Perform alone or make the stage throb with your group, it’s your choice. That’s not all, you get a chance to win prizes worth Rs. 30,000\n\nRegister:\n$urlPreview\n\nRulebook:\n$url');
                                  },
                                  icon: Icon(Icons.share),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                          // IconButton(
                          //   onPressed: () async {
                          //     final urlPreview =
                          //         'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                          //     final url =
                          //         'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                          //     await Share.share(
                          //         'Register for Antaragnee! ⚡⚡\n\n$urlPreview\n\nRulebook:\n$url');
                          //   },
                          //   icon: Icon(Icons.share),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  // StreamBuilder(
                  //     stream: _links.snapshots(),
                  //     builder: (context,
                  //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                  //       final QueryDocumentSnapshot<Object?>? documentSnapshot =
                  //           streamSnapshot.data?.docs[8];
                  //       if (streamSnapshot.hasData) {
                  //         if (documentSnapshot!['logo']?.isNotEmpty) {
                  //           return Align(
                  //             alignment: Alignment.topCenter,
                  //             child: Container(
                  //               // margin: EdgeInsets.only(top: 80),
                  //               margin: EdgeInsets.only(
                  //                   top: MediaQuery.of(context).size.height *
                  //                       0.1),
                  //               // height: 300,
                  //               // width: 350,
                  //               height:
                  //                   MediaQuery.of(context).size.height * 0.375,
                  //               width: MediaQuery.of(context).size.width * 0.89,
                  //               decoration: BoxDecoration(
                  //                 color: Colors.blue,
                  //                 // borderRadius: BorderRadius.circular(20),
                  //                 borderRadius: BorderRadius.circular(
                  //                     MediaQuery.of(context).size.width * 0.05),
                  //                 // ignore: prefer_const_literals_to_create_immutables
                  //                 boxShadow: shadowList,
                  //               ),
                  //               child: Hero(
                  //                 tag: 9,
                  //                 child: Align(
                  //                   // alignment: Alignment.topCenter,
                  //                   child: CachedNetworkImage(
                  //                     imageUrl: documentSnapshot['logo'],
                  //                     fit: BoxFit.contain,
                  //                     placeholder: (context, url) => Container(
                  //                       color: Colors.black,
                  //                     ),
                  //                     errorWidget: (context, url, error) =>
                  //                         Container(
                  //                       // color: Colors.black,
                  //                       child: Icon(
                  //                         Icons.error_outline,
                  //                         // color: Colors.black,
                  //                         size: 50,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   // child: Image.network(
                  //                   //   documentSnapshot['logo'],
                  //                   //   fit: BoxFit.contain,
                  //                   // ),
                  //                   // child: Image.asset(
                  //                   //   'images/Antaragnee.png',
                  //                   // ),
                  //                 ),
                  //               ),
                  //             ),
                  //           );
                  //           // return Align(
                  //           //   child: Hero(
                  //           //     tag: 9,
                  //           //     child: Padding(
                  //           //       padding: EdgeInsets.only(
                  //           //           top: MediaQuery.of(context).size.width *
                  //           //               0.15,
                  //           //           bottom:
                  //           //               MediaQuery.of(context).size.width *
                  //           //                   0.05),
                  //           //       child: Image(
                  //           //         image: NetworkImageWithRetry(
                  //           //           documentSnapshot['logo'],
                  //           //           // fit: BoxFit.contain,
                  //           //         ),
                  //           //         fit: BoxFit.contain,
                  //           //       ),
                  //           //       // child: Image.asset(
                  //           //       //   'images/user_icon_150670.webp',
                  //           //       // ),
                  //           //     ),
                  //           //   ),
                  //           // );
                  //           // return Image.network(
                  //           //   documentSnapshot['logo'],
                  //           //   fit: BoxFit.contain,
                  //           // );
                  //         } else {
                  // return
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      // margin: EdgeInsets.only(top: 80),
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1,
                      ),
                      // height: 300,
                      // width: 350,
                      height: MediaQuery.of(context).size.height * 0.375,
                      width: MediaQuery.of(context).size.width * 0.89,
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 100, 39, 131),
                        // color: Color.fromARGB(255, 132, 0, 255),
                        color: Colors.blue,
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: shadowList,
                      ),
                      child: Hero(
                        tag: 9,
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                // 'images/user_icon_150670.webp',
                                // 'images/logocomingsoon2.PNG',
                                // 'images/logo1.jpg',
                                // 'images/logo2.png',
                                // 'images/logo3.jpg',
                                // 'images/string-theory.jpg',
                                'images/string_logo_2-02.png',
                                fit: BoxFit.contain,
                              ),

                              // child: ClipRRect(
                              //   borderRadius: BorderRadius.circular(20),
                              //   child: Image.asset(
                              //     // 'images/user_icon_150670.webp',
                              //     'images/logocomingsoon2.PNG',
                              //   ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // return Align(
                  //   child: Hero(
                  //     tag: 4,
                  //     child: Padding(
                  //       padding: EdgeInsets.only(
                  //           top: MediaQuery.of(context).size.width *
                  //               0.15,
                  //           bottom:
                  //               MediaQuery.of(context).size.width *
                  //                   0.05),
                  //       child: Image.asset(
                  //         'images/user_icon_150670.webp',
                  //       ),
                  //       // child: Image.asset(
                  //       //   'images/user_icon_150670.webp',
                  //       // ),
                  //     ),
                  //   ),
                  //   // return Image.asset(
                  //   //   'images/user_icon_150670.webp',
                  // );
                  //     }
                  //   } else {
                  //     return CircularProgressIndicator(
                  //       color: Colors.black,
                  //     );
                  //   }
                  // }
                  // // child: Padding(
                  // //   padding: const EdgeInsets.only(top: 8.0),
                  // //   child: FittedBox(
                  // //     fit: BoxFit.scaleDown,
                  // //     child: Text(
                  // //       'Date: TBA',
                  // //       style: TextStyle(
                  // //         fontSize: 22,
                  // //       ),
                  // //     ),
                  // //   ),
                  // // ),
                  // ),
                  // Align(
                  //   alignment: Alignment.topCenter,
                  //   child: Container(
                  //     // margin: EdgeInsets.only(top: 80),
                  //     margin: EdgeInsets.only(
                  //         top: MediaQuery.of(context).size.height * 0.1),
                  //     // height: 300,
                  //     // width: 350,
                  //     height: MediaQuery.of(context).size.height * 0.375,
                  //     width: MediaQuery.of(context).size.width * 0.89,
                  //     decoration: BoxDecoration(
                  //       color: Color.fromARGB(255, 100, 39, 131),
                  //       // borderRadius: BorderRadius.circular(20),
                  //       borderRadius: BorderRadius.circular(
                  //           MediaQuery.of(context).size.width * 0.05),
                  //       // ignore: prefer_const_literals_to_create_immutables
                  //       boxShadow: shadowList,
                  //     ),
                  //     child: Hero(
                  //       tag: 9,
                  //       child: Align(
                  //         alignment: Alignment.topCenter,
                  //         child: Image.asset(
                  //           'images/Antaragnee.png',
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // height: 100,
                      // margin: EdgeInsets.only(top: 350, left: 35, right: 35),
                      height: MediaQuery.of(context).size.height * 0.125,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4375,
                          left: MediaQuery.of(context).size.width * 0.0875,
                          right: MediaQuery.of(context).size.width * 0.0875),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          'String Theory',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.blue,
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.green,
              // ),
            ),
          ),
          StreamBuilder(
              // stream: readLinks(),
              stream: _links.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Text('Something Went Wrong');
                } else if (streamSnapshot.hasData) {
                  // final links = streamSnapshot.data!;
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[8];
                  // final DocumentSnapshot documentSnapshot2 = streamSnapshot.data!.docs[0];
                  // return Row(
                  // children: links.map(buildLink).toList(),);
                  //   );
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 100,
                      // padding: EdgeInsets.only(left: 3.65, right: 3),
                      height: MediaQuery.of(context).size.height * 0.125,

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.009125,
                        right: MediaQuery.of(context).size.width * 0.0075,
                      ),

                      // ignore: sort_child_properties_last
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                  // links.rbooklink;
                                  documentSnapshot['rbooklink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Rulebook will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: primaryGreen,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'RULEBOOK',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                  documentSnapshot['reglink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Registration link will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                        ],
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     // height: 100,
          //     // padding: EdgeInsets.only(left: 3.65, right: 3),
          //     height: MediaQuery.of(context).size.height * 0.125,

          //     padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * 0.009125,
          //       right: MediaQuery.of(context).size.width * 0.0075,
          //     ),

          //     // ignore: sort_child_properties_last
          //     child: Row(
          //       children: [
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: primaryGreen,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'RULEBOOK',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: Colors.blue,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'REGISTER',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //       ],
          //     ),

          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget imagesgridview() => Container(
        // height: 400,
        height: MediaQuery.of(context).size.height * 0.475,
        color: Colors.blueGrey,
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          children: [...myImagesAdapted],
        ),
      );

  final List<Image> myImagesAdapted = [
    Image(
      image: AssetImage('images/DSC_2277.JPG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/DSC_2292.JPG'),
      fit: BoxFit.cover,
    ),
    // Image(
    //   image: AssetImage('images/DSC_2307.JPG'),
    //   fit: BoxFit.cover,
    // ),
    Image(
      image: AssetImage('images/DSC_2372.JPG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/DSC_2439.JPG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/DSC_2374.JPG'),
      fit: BoxFit.cover,
    ),
    // Image(
    //   image: AssetImage('images/DSC_2389.JPG'),
    //   fit: BoxFit.cover,
    // ),
    // Image(
    //   image: AssetImage('images/DSC_2391.JPG'),
    //   fit: BoxFit.cover,
    // ),
    Image(
      image: AssetImage('images/DSC_2393.JPG'),
      fit: BoxFit.cover,
    ),
    // Image(
    //   image: AssetImage('images/DSC_2395.JPG'),
    //   fit: BoxFit.cover,
    // ),
    Image(
      image: AssetImage('images/DSC_2412.jpg'),
      fit: BoxFit.cover,
    ),
    // Image(
    //   image: AssetImage('images/DSC_2414.JPG'),
    //   fit: BoxFit.cover,
    // ),

    Image(
      image: AssetImage('images/DSC_2457.JPG'),
      fit: BoxFit.cover,
    ),
  ];
}

class eventwindow10 extends StatefulWidget {
  eventwindow10({Key? key}) : super(key: key);

  @override
  State<eventwindow10> createState() => _eventwindow10State();
}

class _eventwindow10State extends State<eventwindow10> {
  pressed() {
    var newVal = true;
    if (isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refreshes the page with new value
    setState(() {
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage('images/shrey.jpg'), context);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 400,
                        height: MediaQuery.of(context).size.height * 0.5,
                        color: Colors.amberAccent,
                      ),
                      Container(
                        color: Colors.white,
                        // margin: EdgeInsets.only(top: 80, bottom: 40),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1,
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // Text(
                            //   'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                            //   style: TextStyle(fontSize: 20),
                            // ),
                            Text(
                              // 'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                              'Do you require a stage on which to awe the audience with your captivating performance? \n\nAs we bring the stage to you, mesmerize us with your coordinated choreography and energetic movements!',
                              style: TextStyle(fontSize: 20),
                            ),
                            // Text(
                            //   '\nREGISTRATION DEADLINE: 21 DEC',
                            //   style: TextStyle(fontSize: 21, color: Colors.blue),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(10),
                            // topRight: Radius.circular(10),
                            topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                            topRight: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ),
                        // height: 50,
                        // width: 400,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                          'Photo Collage',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        )),
                      ),
                      imagesgridview(),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 40),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            color: Colors.amberAccent,
                            child: IconButton(
                                // iconSize: 30,
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                icon: Icon(Icons.arrow_back),

                                // splashColor: Colors.blue,
                                // splashRadius: 20,
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => eventpage()),
                                  );
                                }),
                          ),
                          // Material(
                          //   color: Colors.amberAccent,
                          //   child: IconButton(
                          //     // color: Colors.yellowAccent,
                          //     // icon: Icon(Icons.favorite, color: (isPressed) ? Colors.blue:Colors.black),
                          //     icon: (isPressed)
                          //         ? Icon(
                          //             Icons.favorite,
                          //             color: Colors.blue,
                          //           )
                          //         : Icon(Icons.favorite_outline),
                          //     // iconSize: 30,
                          //     iconSize:
                          //         MediaQuery.of(context).size.width * 0.075,
                          //     onPressed: () {
                          //       pressed();
                          //     },
                          //   ),
                          // ),
                          StreamBuilder(
                            stream: _links.snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              final QueryDocumentSnapshot<Object?>?
                                  documentSnapshot =
                                  streamSnapshot.data?.docs[9];

                              if (streamSnapshot.hasData) {
                                return IconButton(
                                  onPressed: () async {
                                    final urlPreview =
                                        // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                        documentSnapshot!['reglink'];
                                    final url =
                                        // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                        documentSnapshot['rbooklink'];
                                    await Share.share(
                                        'Register for Synchronize! ⚡⚡\nYou don\'t want to miss this!\n\nDo you require a stage on which to awe the audience with your captivating performance? \n\nAs we bring the stage to you, mesmerize us with your coordinated choreography and energetic movements!\n\nRegister:\n$urlPreview\n\nRulebook:\n$url');
                                  },
                                  icon: Icon(Icons.share),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                          // IconButton(
                          //   onPressed: () async {
                          //     final urlPreview =
                          //         'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                          //     final url =
                          //         'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                          //     await Share.share(
                          //         'Register for Antaragnee! ⚡⚡\n\n$urlPreview\n\nRulebook:\n$url');
                          //   },
                          //   icon: Icon(Icons.share),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      // margin: EdgeInsets.only(top: 80),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1),
                      // height: 300,
                      // width: 350,
                      height: MediaQuery.of(context).size.height * 0.375,
                      width: MediaQuery.of(context).size.width * 0.89,
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 65, 71, 255),
                        // color: Color.fromARGB(255, 28, 7, 63),
                        color: Color.fromARGB(255, 46, 27, 89),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: shadowList,
                      ),
                      child: Hero(
                        tag: 10,
                        child: Image.asset(
                          // 'images/Synchronize_logo.png',
                          // 'images/Synchronize (2).png',
                            'images/Sync_Logo2-01.png',
                          
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // height: 100,
                      // margin: EdgeInsets.only(top: 350, left: 35, right: 35),
                      height: MediaQuery.of(context).size.height * 0.125,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4375,
                          left: MediaQuery.of(context).size.width * 0.0875,
                          right: MediaQuery.of(context).size.width * 0.0875),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Synchronize',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.blue,
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.green,
              // ),
            ),
          ),
          StreamBuilder(
              // stream: readLinks(),
              stream: _links.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Text('Something Went Wrong');
                } else if (streamSnapshot.hasData) {
                  // final links = streamSnapshot.data!;
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[9];
                  // final DocumentSnapshot documentSnapshot2 = streamSnapshot.data!.docs[0];
                  // return Row(
                  // children: links.map(buildLink).toList(),);
                  //   );
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 100,
                      // padding: EdgeInsets.only(left: 3.65, right: 3),
                      height: MediaQuery.of(context).size.height * 0.125,

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.009125,
                        right: MediaQuery.of(context).size.width * 0.0075,
                      ),

                      // ignore: sort_child_properties_last
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                  // links.rbooklink;
                                  documentSnapshot['rbooklink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Rulebook will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: primaryGreen,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'RULEBOOK',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                  documentSnapshot['reglink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Registration link will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                        ],
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     // height: 100,
          //     // padding: EdgeInsets.only(left: 3.65, right: 3),
          //     height: MediaQuery.of(context).size.height * 0.125,

          //     padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * 0.009125,
          //       right: MediaQuery.of(context).size.width * 0.0075,
          //     ),

          //     // ignore: sort_child_properties_last
          //     child: Row(
          //       children: [
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: primaryGreen,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'RULEBOOK',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: Colors.blue,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'REGISTER',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //       ],
          //     ),

          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget imagesgridview() => Container(
        // height: 400,
        height: MediaQuery.of(context).size.height * 0.475,
        color: Colors.blueGrey,
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 2,
          children: [...myImagesAdapted],
        ),
      );

  final List<Image> myImagesAdapted = [
    Image(
      image: AssetImage('images/DSC_0308.JPG'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/DSC_0487.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/DSC_0608.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/DSC_3220.JPG'),
      fit: BoxFit.cover,
    ),
    // Image(
    //   image: AssetImage('images/DSC_4418.JPG'),
    //   fit: BoxFit.cover,
    // ),
  ];
}

class eventwindow11 extends StatefulWidget {
  eventwindow11({Key? key}) : super(key: key);

  @override
  State<eventwindow11> createState() => _eventwindow11State();
}

class _eventwindow11State extends State<eventwindow11> {
  pressed() {
    var newVal = true;
    if (isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refreshes the page with new value
    setState(() {
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 400,
                        height: MediaQuery.of(context).size.height * 0.5,
                        // color: Colors.amberAccent,
                        // color: Color.fromARGB(255,117, 97, 192),
                        color: Color.fromARGB(255, 224, 149, 179),
                      ),
                      Container(
                        color: Colors.white,
                        // margin: EdgeInsets.only(top: 80, bottom: 40),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1,
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // Text(
                            //   'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                            //   style: TextStyle(fontSize: 20),
                            // ),
                            Text(
                              // 'Drama has never been just acting, but it\'s the art one has within himself to express his emotions. Mainly consisting of theatre plays and street plays, they become one of the best sources to spread awareness for social issues.',
                              'Unkahi recognises the talents that budding poets have, where only the participants with the most beautiful and powerful lines shall become victorious. Participants will not only be going to write the poems but also have to summon their voices skillfully to express their poetic content. Unkahi will provide you with a platform where one can experience the power of poetry in all of its manifestations.',
                              style: TextStyle(fontSize: 20),
                            ),
                            // Text(
                            //   '\nREGISTRATION DEADLINE: 21 DEC',
                            //   style: TextStyle(fontSize: 21, color: Colors.blue),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(10),
                            // topRight: Radius.circular(10),
                            topLeft: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                            topRight: Radius.circular(
                              MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ),
                        // height: 50,
                        // width: 400,
                        height: MediaQuery.of(context).size.height * 0.0625,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text(
                          'Photo Collage',
                          style: TextStyle(fontSize: 33, color: Colors.white),
                        )),
                      ),
                      imagesgridview(),
                    ],
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 40),
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            // color: Colors.amberAccent,
                            color: Color.fromARGB(255, 224, 149, 179),
                            child: IconButton(
                                // iconSize: 30,
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.075,
                                icon: Icon(Icons.arrow_back),

                                // splashColor: Colors.blue,
                                // splashRadius: 20,
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => eventpage()),
                                  );
                                }),
                          ),
                          // Material(
                          //   color: Colors.amberAccent,
                          //   child: IconButton(
                          //     // color: Colors.yellowAccent,
                          //     // icon: Icon(Icons.favorite, color: (isPressed) ? Colors.blue:Colors.black),
                          //     icon: (isPressed)
                          //         ? Icon(
                          //             Icons.favorite,
                          //             color: Colors.blue,
                          //           )
                          //         : Icon(Icons.favorite_outline),
                          //     // iconSize: 30,
                          //     iconSize:
                          //         MediaQuery.of(context).size.width * 0.075,
                          //     onPressed: () {
                          //       pressed();
                          //     },
                          //   ),
                          // ),
                          StreamBuilder(
                            stream: _links.snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              final QueryDocumentSnapshot<Object?>?
                                  documentSnapshot =
                                  streamSnapshot.data?.docs[10];

                              if (streamSnapshot.hasData) {
                                return IconButton(
                                  onPressed: () async {
                                    final urlPreview =
                                        // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                        documentSnapshot!['reglink'];
                                    final url =
                                        // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                        documentSnapshot['rbooklink'];
                                    await Share.share(
                                        'Register for Unkahi! ⚡⚡\nYou don\'t want to miss this!\n\nUnkahi recognises the talents that budding poets have, where only the participants with the most beautiful and powerful lines shall become victorious. Participants will not only be going to write the poems but also have to summon their voices skillfully to express their poetic content. Unkahi will provide you with a platform where one can experience the power of poetry in all of its manifestations.\n\nRegister:\n$urlPreview\n\nRulebook:\n$url');
                                  },
                                  icon: Icon(Icons.share),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                          // IconButton(
                          //   onPressed: () async {
                          //     final urlPreview =
                          //         'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                          //     final url =
                          //         'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                          //     await Share.share(
                          //         'Register for Antaragnee! ⚡⚡\n\n$urlPreview\n\nRulebook:\n$url');
                          //   },
                          //   icon: Icon(Icons.share),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      // margin: EdgeInsets.only(top: 80),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.1),
                      // height: 300,
                      // width: 350,
                      height: MediaQuery.of(context).size.height * 0.375,
                      width: MediaQuery.of(context).size.width * 0.89,
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 244, 255, 44),
                        color: Color.fromARGB(255, 117, 97, 192),

                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: shadowList,
                      ),
                      child: Hero(
                        tag: 11,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            'images/unkahi_logo transparent-01.png',
                            // 'images/DSC_3220.JPG',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      // height: 100,
                      // margin: EdgeInsets.only(top: 350, left: 35, right: 35),
                      height: MediaQuery.of(context).size.height * 0.125,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.4375,
                          left: MediaQuery.of(context).size.width * 0.0875,
                          right: MediaQuery.of(context).size.width * 0.0875),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                      ),
                      // ignore: prefer_const_constructors
                      child: Center(
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Unkahi',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.blue,
              // ),
              // Container(
              //   height: 300,
              //   color: Colors.green,
              // ),
            ),
          ),
          StreamBuilder(
              // stream: readLinks(),
              stream: _links.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Text('Something Went Wrong');
                } else if (streamSnapshot.hasData) {
                  // final links = streamSnapshot.data!;
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[10];
                  // final DocumentSnapshot documentSnapshot2 = streamSnapshot.data!.docs[0];
                  // return Row(
                  // children: links.map(buildLink).toList(),);
                  //   );
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 100,
                      // padding: EdgeInsets.only(left: 3.65, right: 3),
                      height: MediaQuery.of(context).size.height * 0.125,

                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.009125,
                        right: MediaQuery.of(context).size.width * 0.0075,
                      ),

                      // ignore: sort_child_properties_last
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                                  // links.rbooklink;
                                  documentSnapshot['rbooklink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text('Rulebook will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: primaryGreen,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'RULEBOOK',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              var url =
                                  // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                                  documentSnapshot['reglink'];
                              // launchUrlString(
                              //   url,
                              // );
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        'Registration link will be available soon'),
                                    backgroundColor: Colors.green,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              // height: 60,
                              // width: 180,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(
                                      MediaQuery.of(context).size.width *
                                          0.05)),
                              child: Center(
                                  child: Text(
                                'REGISTER',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              )),
                            ),
                          ),
                        ],
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     // height: 100,
          //     // padding: EdgeInsets.only(left: 3.65, right: 3),
          //     height: MediaQuery.of(context).size.height * 0.125,

          //     padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width * 0.009125,
          //       right: MediaQuery.of(context).size.width * 0.0075,
          //     ),

          //     // ignore: sort_child_properties_last
          //     child: Row(
          //       children: [
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: primaryGreen,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'RULEBOOK',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //         TextButton(
          //           onPressed: () {
          //             var url =
          //                 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
          //             launchUrlString(
          //               url,
          //             );
          //           },
          //           child: Container(
          //             // height: 60,
          //             // width: 180,
          //             height: MediaQuery.of(context).size.height * 0.075,
          //             width: MediaQuery.of(context).size.width * 0.45,
          //             decoration: BoxDecoration(
          //                 color: Colors.blue,
          //                 borderRadius: BorderRadius.circular(
          //                     MediaQuery.of(context).size.width * 0.05)),
          //             child: Center(
          //                 child: Text(
          //               'REGISTER',
          //               style: TextStyle(color: Colors.white, fontSize: 24),
          //             )),
          //           ),
          //         ),
          //       ],
          //     ),

          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget imagesgridview() => Container(
        // height: 400,
        height: MediaQuery.of(context).size.height * 0.475,
        color: Colors.blueGrey,
        child: GridView.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 1,
          children: [...myImagesAdapted],
        ),
      );

  final List<Image> myImagesAdapted = [
    Image(
      image: AssetImage('images/Unkahi D-day 3.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('images/Unkahi D-day 4.jpg'),
      fit: BoxFit.cover,
    ),
  ];
}

Stream<List<Links>> readLinks() =>
    FirebaseFirestore.instance.collection('links').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Links.fromJSON(doc.data())).toList());

class Links {
  final String reglink;
  final String rbooklink;
  final String date;

  Links({
    required this.reglink,
    required this.rbooklink,
    required this.date,
  });

  Map<String, dynamic> toJSON() => {
        'reglink': reglink,
        'rbooklink': rbooklink,
        'date': date,
      };

  static Links fromJSON(Map<String, dynamic> json) => Links(
        reglink: json['reglink'],
        rbooklink: json['rbooklink'],
        date: json['date'],
      );
}

// Widget buildLink(Links links) => Container(
//   child: Text(links.rbooklink),
// );

Widget buildLink(Links links) => Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        // height: 100,
        // padding: EdgeInsets.only(left: 3.65, right: 3),
        // height: MediaQuery.of(context).size.height * 0.125,
        height: 100,

        padding: EdgeInsets.only(
          // left: MediaQuery.of(context).size.width * 0.009125,
          left: 3.65,
          // right: MediaQuery.of(context).size.width * 0.0075,
          right: 3,
        ),

        // ignore: sort_child_properties_last
        child: Row(
          children: [
            TextButton(
              onPressed: () {
                var url =
                    // 'https://drive.google.com/file/d/1FP_rBh_75iOzvK9fKMSH_BP4qUQ4R30W/view?usp=sharing';
                    // Text(links.rbooklink);
                    links.rbooklink;
                launchUrlString(
                  url,
                );
              },
              child: Container(
                // height: 60,
                // width: 180,
                // height: MediaQuery.of(context).size.height * 0.075,
                height: 60,
                // width: MediaQuery.of(context).size.width * 0.45,
                width: 180,
                decoration: BoxDecoration(
                  color: primaryGreen,
                  borderRadius: BorderRadius.circular(
                      // MediaQuery.of(context).size.width * 0.05),
                      20),
                ),
                child: Center(
                    child: Text(
                  'RULEBOOK',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
            TextButton(
              onPressed: () {
                var url =
                    // 'https://docs.google.com/forms/d/e/1FAIpQLSdkiJCjSHaPodSSCFhdq7udbAJ1CdwNGPNkS24dKMO6IkfOkQ/viewform';
                    links.reglink;
                launchUrlString(
                  url,
                );
              },
              child: Container(
                // height: 60,
                // width: 180,
                // height: MediaQuery.of(context).size.height * 0.075,
                height: 60,
                // width: MediaQuery.of(context).size.width * 0.45,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(
                    // MediaQuery.of(context).size.width * 0.05,
                    20,
                  ),
                ),
                child: Center(
                    child: Text(
                  'REGISTER',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
              ),
            ),
          ],
        ),

        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
      ),
    );

//
