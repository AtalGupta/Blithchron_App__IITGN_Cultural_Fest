import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/Events_Page/eventwindow.dart';
import 'package:bottom_navigation_bar/Events_Page/config.dart';
import 'package:flutter_image/flutter_image.dart';
import 'package:image_network/image_network.dart';

final CollectionReference _links =
    FirebaseFirestore.instance.collection('links');

class eventpage extends StatefulWidget {
  eventpage({Key? key}) : super(key: key);

  @override
  State<eventpage> createState() => _eventpageState();
}

class _eventpageState extends State<eventpage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 2000),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.25, 0.5, 0.75, 1],
          colors: [
            Color.fromARGB(255, 77, 139, 213),
            Color.fromARGB(255, 92, 173, 212),
            Color.fromARGB(255, 76, 204, 177),
            Color.fromARGB(255, 67, 222, 157),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // backgroundColor: Colors.red,
          title: const Center(
              child: Text(
            "Events",
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          )),
        ),
        body: ListView(
          // padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.04,
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: const Text(
                'Register now!',
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event1(),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event3(),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event5(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event6(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event7(),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event10(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event11(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event2(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event4(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event8(),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                right: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Event9(),
            ),

            //
            //
            //
            SizedBox(
              height: 60,
            ),
            // Image.asset('images/events section 1.png'),
          ],
        ),
        // backgroundColor: Colors.purple,
        // backgroundColor: Colors.yellow,
      ),
    );
  }

  Widget Event1() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow1()));
        },
        child: Container(
          //           height: MediaQuery.of(context).size.height * 0.2725,

          // margin: Edge/Insets.symmetric(horizontal: 6),
          height: MediaQuery.of(context).size.height * 0.2725,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      // width: 190,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // color: Color.fromARGB(255, 226, 225, 225),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 1,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * 0.0825,
                          ),
                          child: Image.asset(
                            'images/Antaragnee.png',
                            // fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // margin: EdgeInsets.only(right: 20),
                // width: 154,
                width: MediaQuery.of(context).size.width * 0.4015,

                // padding: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(
                  // top: MediaQuery.of(context).size.height * 0.03125,
                  top: 0,
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4015,

                      // margin: EdgeInsets.only(),
                      // color: Colors.amberAccent,
                      // width: 154,
                      // width: 50,
                      // width: MediaQuery.of(context).size.width * 0.4,
                      // width: 160,

                      // height: 50,
                      // width: double.infinity,
                      // width: fit
                      // width: double.maxFinite,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 198, 34, 50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            // left: 15.0,
                            // left: MediaQuery.of(context).size.width * 0.0375,
                            // top: 12,
                            // top: MediaQuery.of(context).size.height * 0.015,
                            ),
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Antaragnee',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[0];
                    //       if (streamSnapshot.hasData) {
                    //         return Padding(
                    //           padding: const EdgeInsets.only(top: 8.0),
                    //           child: FittedBox(
                    //             fit: BoxFit.scaleDown,
                    //             child: Text(
                    //               // 'Date: TBA',
                    //               documentSnapshot!['date'],
                    //               style: TextStyle(
                    //                 fontSize: 22,
                    //               ),
                    //             ),
                    //           ),
                    //         );
                    //       } else {
                    //         // return CircularProgressIndicator();
                    //         return Container(
                    //           height: 35,
                    //         );
                    //       }
                    //     }
                    //     // child: Padding(
                    //     //   padding: const EdgeInsets.only(top: 8.0),
                    //     //   child: FittedBox(
                    //     //     fit: BoxFit.scaleDown,
                    //     //     child: Text(
                    //     //       'Date: TBA',
                    //     //       style: TextStyle(
                    //     //         fontSize: 22,
                    //     //       ),
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //     ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '   Date:\n19th Feb',
                          // 'Date: 19th Feb',
                          // documentSnapshot!['date'],
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     // top: 10,
                    //     // left: 10,
                    //     // right: 10,
                    //     top: MediaQuery.of(context).size.height * 0.0125,
                    //     left: MediaQuery.of(context).size.width * 0.025,
                    //     right: MediaQuery.of(context).size.width * 0.025,
                    //   ),
                    //   child: FittedBox(
                    //     fit: BoxFit.scaleDown,
                    //     child: Text(
                    //       'Register here',
                    //       style: TextStyle(
                    //         fontSize: 22,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                margin: EdgeInsets.only(top: 70, bottom: 30),
                // margin: EdgeInsets.only(
                //     top: MediaQuery.of(context).size.height * 0.075,
                //     bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event2() => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => eventwindow2(),
            ),
          );
        },
        child: Container(
          //           height: MediaQuery.of(context).size.height * 0.2725,

          height: MediaQuery.of(context).size.height * 0.2725,
          // height: MediaQuery.of(context).size.height * 0.26,
//
          margin: EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        // color: Colors.cyan[500],
                        color: Color.fromARGB(255, 174, 237, 244),
                        // color: Color.fromARGB(255, )
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: shadowList,
                      ),
                      margin: EdgeInsets.only(top: 30),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[1];
                    //       if (streamSnapshot.connectionState ==
                    //           ConnectionState.waiting) {
                    //         return CircularProgressIndicator(
                    //           color: Colors.white,
                    //         );
                    //       }
                    //       if (streamSnapshot.hasData) {
                    //         if (documentSnapshot!['logo']?.isNotEmpty) {
                    //           return Align(
                    //             child: Hero(
                    //               tag: 2,
                    //               child: Padding(
                    //                 padding: EdgeInsets.only(
                    //                     top: MediaQuery.of(context).size.width *
                    //                         0.15,
                    //                     bottom:
                    //                         MediaQuery.of(context).size.width *
                    //                             0.05),
                    //                 // child: ImageNetwork(
                    //                 //   image: documentSnapshot['logo'],
                    //                 //   height: 150,
                    //                 //   width: 150,
                    //                 // ),
                    //                 // child: CachedNetworkImage(
                    //                 //   imageUrl: documentSnapshot['logo'],
                    //                 //   placeholder: (context, url) =>
                    //                 //       CircularProgressIndicator(),
                    //                 //   errorWidget: (context, url, error) =>
                    //                 //       Icon(Icons.error),
                    //                 // ),
                    //                 // child: Image(
                    //                 //   image: NetworkImageWithRetry(
                    //                 //     documentSnapshot['logo'],
                    //                 //   ),
                    //                 //   fit: BoxFit.contain,
                    //                 // ),
                    //                 // child: Image.asset(
                    //                 //   'images/user_icon_150670.webp',
                    //                 // ),
                    //                 // child: Image.network(
                    //                 //   documentSnapshot['logo'],
                    //                 //   fit: BoxFit.contain,
                    //                 // ),
                    //                 child: CachedNetworkImage(
                    //                   imageUrl: documentSnapshot['logo'],
                    //                   fit: BoxFit.contain,
                    //                   placeholder: (context, url) => Container(
                    //                     color: Colors.cyan[500],
                    //                   ),
                    //                   errorWidget: (context, url, error) =>
                    //                       Container(
                    //                     // color: Colors.black,
                    //                     child: Icon(
                    //                       Icons.error_outline,
                    //                       // color: Colors.black,
                    //                       size: 50,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           );
                    //           // return Image.network(
                    //           //   documentSnapshot['logo'],
                    //           //   fit: BoxFit.contain,
                    //           // );
                    // }
                    // else
                    // {
                    //   return
                    Align(
                      child: Hero(
                        tag: 4,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * 0.08,
                            // bottom: MediaQuery.of(context).size.width * 0.05,
                          ),
                          // child: Image.asset(
                          //   'images/user_icon_150670.webp',
                          // ),
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
                          //   'images/user_icon_150670.webp',
                          // ),
                        ),
                      ),
                      // return Image.asset(
                      //   'images/user_icon_150670.webp',
                    ),
                  ],
                ),
              ),
              // }
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
              //   child: Hero(
              //     tag: 2,
              //     child: Padding(
              //       padding: EdgeInsets.only(
              //           top: MediaQuery.of(context).size.width * 0.15,
              //           bottom: MediaQuery.of(context).size.width * 0.05),
              //       child: Image.asset(
              //         'images/user_icon_150670.webp',
              //       ),
              //     ),
              //   ),
              // )
              //     ],
              //   ),
              // ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                // width: 154,
                width: MediaQuery.of(context).size.width * 0.4015,
                // width: MediaQuery.of(context).size.width * 0.375,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      // width: MediaQuery.of(context).size.width * 0.4,
                      // width: 154,
                      // width: MediaQuery.of(context).size.width * 0.385,
                      width: MediaQuery.of(context).size.width * 0.4015,
                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      // height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 0, 188, 213),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'BlithCube',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[1];
                    //       if (streamSnapshot.hasData) {
                    //         return Padding(
                    //           padding: const EdgeInsets.only(top: 8.0),
                    //           child: FittedBox(
                    //             fit: BoxFit.scaleDown,
                    //             child: Text(
                    //               // 'Date: TBA',
                    //               documentSnapshot!['date'],
                    //               style: TextStyle(
                    //                 fontSize: 22,
                    //               ),
                    //             ),
                    //           ),
                    //         );
                    //       } else {
                    //         // return CircularProgressIndicator();
                    //         return Container(
                    //           height: 35,
                    //         );
                    //       }
                    //     }
                    //     // child: Padding(
                    //     //   padding: const EdgeInsets.only(top: 8.0),
                    //     //   child: FittedBox(
                    //     //     fit: BoxFit.scaleDown,
                    //     //     child: Text(
                    //     //       'Date: TBA',
                    //     //       style: TextStyle(
                    //     //         fontSize: 22,
                    //     //       ),
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //     ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          // 'Date: 18th Feb',
                          '   Date:\n18th Feb',
                          // documentSnapshot!['date'],
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 10,
                    //     left: 10,
                    //     right: 10,
                    //   ),
                    //   child: FittedBox(
                    //     fit: BoxFit.scaleDown,
                    //     child: Text(
                    //       'Register here',
                    //       style: TextStyle(
                    //         fontSize: 22,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                margin: EdgeInsets.only(top: 70, bottom: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              )
            ],
          ),
        ),
      );

  Widget Event3() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow3()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2725,
          margin: EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 226, 225, 225),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: shadowList,
                      ),
                      margin: EdgeInsets.only(top: 30),
                    ),
                    Align(
                      child: Hero(
                        tag: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10,
                              left: 15,
                              // right: 5,
                              bottom: 10),
                          child: Image.asset(
                            'images/euphony_light.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 27),
                width: MediaQuery.of(context).size.width * 0.4015,

                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      // height: 50,
                      // width: 154,
                      // width: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.4015,

                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 63, 107, 180),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Euphony',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[2];
                    //       if (streamSnapshot.hasData) {
                    //         return Padding(
                    //           padding: const EdgeInsets.only(top: 8.0),
                    //           child: FittedBox(
                    //             fit: BoxFit.scaleDown,
                    //             child: Text(
                    //               // 'Date: TBA',
                    //               documentSnapshot!['date'],
                    //               style: TextStyle(
                    //                 fontSize: 22,
                    //               ),
                    //             ),
                    //           ),
                    //         );
                    //       } else {
                    //         // return CircularProgressIndicator();
                    //         return Container(
                    //           height: 35,
                    //         );
                    //       }
                    //     }
                    //     // child: Padding(
                    //     //   padding: const EdgeInsets.only(top: 8.0),
                    //     //   child: FittedBox(
                    //     //     fit: BoxFit.scaleDown,
                    //     //     child: Text(
                    //     //       'Date: TBA',
                    //     //       style: TextStyle(
                    //     //         fontSize: 22,
                    //     //       ),
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //     ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          // 'Date: 18th Feb',
                          '   Date:\n18th Feb',

                          // documentSnapshot!['date'],
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     top: 10,
                    //     left: 10,
                    //     right: 10,
                    //   ),
                    //   child: FittedBox(
                    //     fit: BoxFit.scaleDown,
                    //     child: Text(
                    //       'Register here',
                    //       style: TextStyle(
                    //         fontSize: 22,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                margin: EdgeInsets.only(top: 70, bottom: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              )
            ],
          ),
        ),
      );

  Widget Event4() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow4()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2725,

          // margin: EdgeInsets.symmetric(horizontal: 6),
          // height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        // color: Colors.amberAccent,
                        // color: Colors.green[700],
                        color: Color.fromARGB(255,198, 120, 120),

                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    // Align(
                    //   child: Hero(
                    //     tag: 4,
                    //     child: Padding(
                    //       // padding: const EdgeInsets.only(top: 33),
                    //       padding: EdgeInsets.only(
                    //           top: MediaQuery.of(context).size.width * 0.15,
                    //           bottom: MediaQuery.of(context).size.width * 0.05),
                    // child: Image.network('https://picsum.photos/200/300'),
                    // child: Image.network('https://drive.google.com/file/d/1QmYNFSSG84UmUhnN4S4yX_e2QYOi9ny5/view'),
                    // child: Image.network(
                    //     'https://drive.google.com/uc?export=view&id=1QmYNFSSG84UmUhnN4S4yX_e2QYOi9ny5'),
                    // child: Image.asset(
                    //   'images/user_icon_150670.webp',
                    // )
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[3];
                    //       if (streamSnapshot.hasData) {
                    //         if (documentSnapshot!['logo']?.isNotEmpty) {
                    //           return Align(
                    //             child: Hero(
                    //               tag: 4,
                    //               child: Padding(
                    //                 padding: EdgeInsets.only(
                    //                     top: MediaQuery.of(context).size.width *
                    //                         0.15,
                    //                     bottom:
                    //                         MediaQuery.of(context).size.width *
                    //                             0.05),
                    //                 child: CachedNetworkImage(
                    //                   imageUrl: documentSnapshot['logo'],
                    //                   fit: BoxFit.contain,
                    //                   placeholder: (context, url) => Container(
                    //                     color: Colors.amberAccent,
                    //                   ),
                    //                   errorWidget: (context, url, error) =>
                    //                       Container(
                    //                     // color: Colors.black,
                    //                     child: Icon(
                    //                       Icons.error_outline,
                    //                       // color: Colors.black,
                    //                       size: 50,
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 // child: Image.network(
                    //                 //   documentSnapshot['logo'],
                    //                 //   fit: BoxFit.contain,
                    //                 // ),
                    //                 // child: Image(
                    //                 //   image: NetworkImageWithRetry(
                    //                 //     documentSnapshot['logo'],
                    //                 //     // fit: BoxFit.contain,
                    //                 //   ),
                    //                 //   fit: BoxFit.contain,
                    //                 // ),
                    //                 // child: Image.asset(
                    //                 //   'images/user_icon_150670.webp',
                    //                 // ),
                    //               ),
                    //             ),
                    //           );
                    //           // return Image.network(
                    //           //   documentSnapshot['logo'],
                    //           //   fit: BoxFit.contain,
                    //           // );
                    //         } else {
                    //           return Align(
                    //             child: Hero(
                    //               tag: 4,
                    //               child: Padding(
                    //                 padding: EdgeInsets.only(
                    //                     top: MediaQuery.of(context).size.width *
                    //                         0.15,
                    //                     bottom:
                    //                         MediaQuery.of(context).size.width *
                    //                             0.05),
                    //                 // child: Image.asset(
                    //                 //   'images/user_icon_150670.webp',
                    //                 // ),
                    //                 child: ClipRRect(
                    //                   borderRadius: BorderRadius.circular(8),
                    //                   child: Image.asset(
                    //                     // 'images/user_icon_150670.webp',
                    //                     // 'images/logocomingsoon2.PNG',
                    //                     // 'images/logo1.jpg',
                    //                     // 'images/logo2.png',
                    //                     // 'images/logo3.jpg',
                    //                     'images/logo4.webp',
                    //                     fit: BoxFit.contain,
                    //                   ),
                    //                 ),
                    //                 // child: Image.asset(
                    //                 //   'images/user_icon_150670.webp',
                    //                 // ),
                    //               ),
                    //             ),
                    //             // return Image.asset(
                    //             //   'images/user_icon_150670.webp',
                    //           );
                    //         }
                    //       } else {
                    //         return CircularProgressIndicator(
                    //           color: Colors.black,
                    //         );
                    //       }
                    //     }
                    //     // child: Padding(
                    //     //   padding: const EdgeInsets.only(top: 8.0),
                    //     //   child: FittedBox(
                    //     //     fit: BoxFit.scaleDown,
                    //     //     child: Text(
                    //     //       'Date: TBA',
                    //     //       style: TextStyle(
                    //     //         fontSize: 22,
                    //     //       ),
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //     ),
                    Align(
                      child: Hero(
                        tag: 2,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * 0.1,
                            bottom: MediaQuery.of(context).size.width * 0.05,
                          ),
                          // child: Image.asset(
                          //   'images/user_icon_150670.webp',
                          // ),
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
                          // child: Image.asset(
                          //   'images/user_icon_150670.webp',
                          // ),
                        ),
                      ),
                      // return Image.asset(
                      //   'images/user_icon_150670.webp',
                    ),

                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                width: MediaQuery.of(context).size.width * 0.4015,

                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125,
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      // width: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.4015,

                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 245, 164, 152),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Panache',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[3];
                    //       if (streamSnapshot.hasData) {
                    //         return Padding(
                    //           padding: const EdgeInsets.only(top: 8.0),
                    //           child: FittedBox(
                    //             fit: BoxFit.scaleDown,
                    //             child: Text(
                    //               // 'Date: TBA',
                    //               documentSnapshot!['date'],
                    //               style: TextStyle(
                    //                 fontSize: 22,
                    //               ),
                    //             ),
                    //           ),
                    //         );
                    //       } else {
                    //         // return CircularProgressIndicator();
                    //         return Container(
                    //           height: 35,
                    //         );
                    //       }
                    //     }
                    //     // child: Padding(
                    //     //   padding: const EdgeInsets.only(top: 8.0),
                    //     //   child: FittedBox(
                    //     //     fit: BoxFit.scaleDown,
                    //     //     child: Text(
                    //     //       'Date: TBA',
                    //     //       style: TextStyle(
                    //     //         fontSize: 22,
                    //     //       ),
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //     ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          // 'Date: 19th Feb',
                          '   Date:\n19th Feb',
                          // documentSnapshot!['date'],
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     // top: 10,
                    //     // left: 10,
                    //     // right: 10,
                    //     top: MediaQuery.of(context).size.height * 0.0125,
                    //     left: MediaQuery.of(context).size.width * 0.025,
                    //     right: MediaQuery.of(context).size.width * 0.025,
                    //   ),
                    //   child: FittedBox(
                    //     fit: BoxFit.scaleDown,
                    //     child: Text(
                    //       'Register here',
                    //       style: TextStyle(
                    //         fontSize: 22,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                margin: EdgeInsets.only(top: 70, bottom: 30),
                // margin: EdgeInsets.only(
                //     top: MediaQuery.of(context).size.height * 0.075,
                //     bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event5() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow5()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2725,

          // margin: EdgeInsets.symmetric(horizontal: 6),
          // height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 244, 239, 59),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 5,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding: EdgeInsets.only(top: 35, left: 10, right: 6),
                          // top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            'images/Quizzitch-02.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4015,

                // padding: EdgeInsets.only(top: 25),
                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125,
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      // width: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.4015,

                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        // color: Color.fromARGB(255, 255, 0, 208),
                        color: Color.fromARGB(255, 247, 147, 30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Quizzitch',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[4];
                    //       if (streamSnapshot.hasData) {
                    //         return Padding(
                    //           padding: const EdgeInsets.only(top: 8.0),
                    //           child: FittedBox(
                    //             fit: BoxFit.scaleDown,
                    //             child: Text(
                    //               // 'Date: TBA',
                    //               documentSnapshot!['date'],
                    //               style: TextStyle(
                    //                 fontSize: 22,
                    //               ),
                    //             ),
                    //           ),
                    //         );
                    //       } else {
                    //         // return CircularProgressIndicator();
                    //         return Container(
                    //           height: 35,
                    //         );
                    //       }
                    //     }
                    //     // child: Padding(
                    //     //   padding: const EdgeInsets.only(top: 8.0),
                    //     //   child: FittedBox(
                    //     //     fit: BoxFit.scaleDown,
                    //     //     child: Text(
                    //     //       'Date: TBA',
                    //     //       style: TextStyle(
                    //     //         fontSize: 22,
                    //     //       ),
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //     ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          // 'Date: 19th Feb',
                          '   Date:\n19th Feb',
                          // documentSnapshot!['date'],
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     // top: 10,
                    //     // left: 10,
                    //     // right: 10,
                    //     top: MediaQuery.of(context).size.height * 0.0125,
                    //     left: MediaQuery.of(context).size.width * 0.025,
                    //     right: MediaQuery.of(context).size.width * 0.025,
                    //   ),
                    //   child: FittedBox(
                    //     fit: BoxFit.scaleDown,
                    //     child: Text(
                    //       'Register here',
                    //       style: TextStyle(
                    //         fontSize: 22,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                margin: EdgeInsets.only(top: 70, bottom: 30),
                // margin: EdgeInsets.only(
                //     top: MediaQuery.of(context).size.height * 0.075,
                //     bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  // Widget Event6() => GestureDetector(
  //       onTap: () {
  //         Navigator.push(
  //             context, MaterialPageRoute(builder: (context) => eventwindow6()));
  //       },
  //       child: Container(
  //         height: MediaQuery.of(context).size.height * 0.2725,

  //         // margin: EdgeInsets.symmetric(horizontal: 6),
  //         // height: MediaQuery.of(context).size.height * 0.275,
  //         margin: EdgeInsets.symmetric(
  //             horizontal: MediaQuery.of(context).size.width * 0.015),

  //         child: Row(
  //           children: [
  //             Expanded(
  //               child: Stack(
  //                 children: [
  //                   Container(
  //                     decoration: BoxDecoration(
  //                       color: Color.fromARGB(255, 44, 210, 157),
  //                       // borderRadius: BorderRadius.circular(20),
  //                       borderRadius: BorderRadius.circular(
  //                           MediaQuery.of(context).size.width * 0.05),
  //                       boxShadow: shadowList,
  //                     ),
  //                     // margin: EdgeInsets.only(top: 30),
  //                     margin: EdgeInsets.only(
  //                         top: MediaQuery.of(context).size.height * 0.0375),
  //                   ),
  //                   Align(
  //                     child: Hero(
  //                       tag: 6,
  //                       child: Padding(
  //                         // padding: const EdgeInsets.only(top: 33),
  //                         padding:
  //                             EdgeInsets.only(left: 10, right: 10, top: 50),

  //                         // top: MediaQuery.of(context).size.width * 0.0825),
  //                         child: Image.asset(
  //                           'images/reverbcolour.png',
  //                         ),
  //                       ),
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             ),
  //             Container(
  //               // padding: EdgeInsets.only(top: 25),
  //               width: MediaQuery.of(context).size.width * 0.4015,

  //               padding: EdgeInsets.only(
  //                   // top: MediaQuery.of(context).size.height * 0.03125,
  //                   ),
  //               child: Column(
  //                 children: [
  //                   Container(
  //                     // color: Colors.amberAccent,
  //                     // width: 154,
  //                     // width: MediaQuery.of(context).size.width * 0.4,
  //                     width: MediaQuery.of(context).size.width * 0.4015,

  //                     // height: 50,
  //                     height: MediaQuery.of(context).size.height * 0.0625,
  //                     decoration: BoxDecoration(
  //                       borderRadius:
  //                           BorderRadius.only(topRight: Radius.circular(20)),
  //                       color: Color.fromARGB(255, 25, 0, 255),
  //                     ),
  //                     child: Padding(
  //                       padding: const EdgeInsets.only(left: 0.0, top: 0),
  //                       child: FittedBox(
  //                         fit: BoxFit.scaleDown,
  //                         child: Text(
  //                           'Reverb',
  //                           style: TextStyle(fontSize: 22, color: Colors.white),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                   StreamBuilder(
  //                       stream: _links.snapshots(),
  //                       builder: (context,
  //                           AsyncSnapshot<QuerySnapshot> streamSnapshot) {
  //                         final QueryDocumentSnapshot<Object?>?
  //                             documentSnapshot = streamSnapshot.data?.docs[5];
  //                         if (streamSnapshot.hasData) {
  //                           return Padding(
  //                             padding: const EdgeInsets.only(top: 8.0),
  //                             child: FittedBox(
  //                               fit: BoxFit.scaleDown,
  //                               child: Text(
  //                                 // 'Date: TBA',
  //                                 documentSnapshot!['date'],
  //                                 style: TextStyle(
  //                                   fontSize: 22,
  //                                 ),
  //                               ),
  //                             ),
  //                           );
  //                         } else {
  //                           // return CircularProgressIndicator();
  //                           return Container(
  //                             height: 35,
  //                           );
  //                         }
  //                       }
  //                       // child: Padding(
  //                       //   padding: const EdgeInsets.only(top: 8.0),
  //                       //   child: FittedBox(
  //                       //     fit: BoxFit.scaleDown,
  //                       //     child: Text(
  //                       //       'Date: TBA',
  //                       //       style: TextStyle(
  //                       //         fontSize: 22,
  //                       //       ),
  //                       //     ),
  //                       //   ),
  //                       // ),
  //                       ),
  //                   Padding(
  //                     padding: EdgeInsets.only(
  //                       // top: 10,
  //                       // left: 10,
  //                       // right: 10,
  //                       top: MediaQuery.of(context).size.height * 0.0125,
  //                       left: MediaQuery.of(context).size.width * 0.025,
  //                       right: MediaQuery.of(context).size.width * 0.025,
  //                     ),
  //                     child: FittedBox(
  //                       fit: BoxFit.scaleDown,
  //                       child: Text(
  //                         'Register here',
  //                         style: TextStyle(
  //                           fontSize: 22,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               // margin: EdgeInsets.only(top: 60, bottom: 20),
  //               margin: EdgeInsets.only(
  //                   top: MediaQuery.of(context).size.height * 0.075,
  //                   bottom: MediaQuery.of(context).size.height * 0.025),
  //               decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   boxShadow: shadowList,
  //                   borderRadius: BorderRadius.only(
  //                     // topRight: Radius.circular(20),
  //                     // bottomRight: Radius.circular(20),
  //                     topRight: Radius.circular(
  //                         MediaQuery.of(context).size.width * 0.05),
  //                     bottomRight: Radius.circular(
  //                         MediaQuery.of(context).size.width * 0.05),
  //                   )),
  //             )
  //           ],
  //         ),
  //       ),
  //     );

  Widget Event6() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow6()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2725,

          // margin: EdgeInsets.symmetric(horizontal: 6),
          // height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 44, 210, 157),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 6,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 50),

                          // top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            'images/Aerosol Logo.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                width: MediaQuery.of(context).size.width * 0.4015,

                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125,
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      // width: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.4015,

                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 49, 190, 230),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Aerosol',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[5];
                    //       if (streamSnapshot.hasData) {
                    //         return Padding(
                    //           padding: const EdgeInsets.only(top: 8.0),
                    //           child: FittedBox(
                    //             fit: BoxFit.scaleDown,
                    //             child: Text(
                    //               // 'Date: TBA',
                    //               documentSnapshot!['date'],
                    //               style: TextStyle(
                    //                 fontSize: 22,
                    //               ),
                    //             ),
                    //           ),
                    //         );
                    //       } else {
                    //         // return CircularProgressIndicator();
                    //         return Container(
                    //           height: 35,
                    //         );
                    //       }
                    //     }
                    //     // child: Padding(
                    //     //   padding: const EdgeInsets.only(top: 8.0),
                    //     //   child: FittedBox(
                    //     //     fit: BoxFit.scaleDown,
                    //     //     child: Text(
                    //     //       'Date: TBA',
                    //     //       style: TextStyle(
                    //     //         fontSize: 22,
                    //     //       ),
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //     ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          // 'Date: 18th Feb',
                          '   Date:\n18th Feb',
                          // documentSnapshot!['date'],
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     // top: 10,
                    //     // left: 10,
                    //     // right: 10,
                    //     top: MediaQuery.of(context).size.height * 0.0125,
                    //     left: MediaQuery.of(context).size.width * 0.025,
                    //     right: MediaQuery.of(context).size.width * 0.025,
                    //   ),
                    //   child: FittedBox(
                    //     fit: BoxFit.scaleDown,
                    //     child: Text(
                    //       'Register here',
                    //       style: TextStyle(
                    //         fontSize: 22,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                margin: EdgeInsets.only(top: 70, bottom: 30),
                // margin: EdgeInsets.only(
                //     top: MediaQuery.of(context).size.height * 0.075,
                //     bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event7() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow7()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2725,

          // margin: EdgeInsets.symmetric(horizontal: 6),
          // height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 129, 0, 194),
                        color: Colors.cyan[500],
                        // color: Color.fromARGB(255, 132, 0, 255),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.0375,
                      ),
                    ),
                    Align(
                      child: Hero(
                        tag: 7,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * 0.1,
                            bottom: 10,
                            // left: 10,
                          ),
                          child: Image.asset(
                            // 'images/Skrimish Dark logo.png',
                            'images/hahaha.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                width: MediaQuery.of(context).size.width * 0.4015,

                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125,
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      // width: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.4015,

                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 132, 0, 255),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Skirmish',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[6];
                    //       if (streamSnapshot.hasData) {
                    //         return Padding(
                    //           padding: const EdgeInsets.only(top: 8.0),
                    //           child: FittedBox(
                    //             fit: BoxFit.scaleDown,
                    //             child: Text(
                    //               // 'Date: TBA',
                    //               documentSnapshot!['date'],
                    //               style: TextStyle(
                    //                 fontSize: 22,
                    //               ),
                    //             ),
                    //           ),
                    //         );
                    //       } else {
                    //         // return CircularProgressIndicator();
                    //         return Container(
                    //           height: 35,
                    //         );
                    //       }
                    //     }
                    //     // child: Padding(
                    //     //   padding: const EdgeInsets.only(top: 8.0),
                    //     //   child: FittedBox(
                    //     //     fit: BoxFit.scaleDown,
                    //     //     child: Text(
                    //     //       'Date: TBA',
                    //     //       style: TextStyle(
                    //     //         fontSize: 22,
                    //     //       ),
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //     ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          // 'Date: 11th Feb',
                          '       Date:\n11th-18th Feb',
                          // documentSnapshot!['date'],
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     // top: 10,
                    //     // left: 10,
                    //     // right: 10,
                    //     top: MediaQuery.of(context).size.height * 0.0125,
                    //     left: MediaQuery.of(context).size.width * 0.025,
                    //     right: MediaQuery.of(context).size.width * 0.025,
                    //   ),
                    //   child: FittedBox(
                    //     fit: BoxFit.scaleDown,
                    //     child: Text(
                    //       'Register here',
                    //       style: TextStyle(
                    //         fontSize: 22,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                margin: EdgeInsets.only(top: 70, bottom: 30),
                // margin: EdgeInsets.only(
                //     top: MediaQuery.of(context).size.height * 0.075,
                //     bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event8() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow8()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2725,

          // margin: EdgeInsets.symmetric(horizontal: 6),
          // height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        // color: Colors.pinkAccent,
                        // color: Color.fromARGB(255, 170, 0, 255),
                        color: Colors.indigo[500],
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[7];
                    //       if (streamSnapshot.hasData) {
                    //         if (documentSnapshot!['logo']?.isNotEmpty) {
                    //           return Align(
                    //             child: Hero(
                    //               tag: 8,
                    //               child: Padding(
                    //                 padding: EdgeInsets.only(
                    //                     top: MediaQuery.of(context).size.width *
                    //                         0.15,
                    //                     bottom:
                    //                         MediaQuery.of(context).size.width *
                    //                             0.05),
                    //                 child: CachedNetworkImage(
                    //                   imageUrl: documentSnapshot['logo'],
                    //                   fit: BoxFit.contain,
                    //                   placeholder: (context, url) => Container(
                    //                     color: Colors.pinkAccent,
                    //                   ),
                    //                   errorWidget: (context, url, error) =>
                    //                       Container(
                    //                     // color: Colors.black,
                    //                     child: Icon(
                    //                       Icons.error_outline,
                    //                       // color: Colors.black,
                    //                       size: 50,
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 // child: Image.network(
                    //                 //   documentSnapshot['logo'],
                    //                 //   fit: BoxFit.contain,
                    //                 // ),
                    //                 // child: Image(
                    //                 //   image: NetworkImageWithRetry(
                    //                 //     documentSnapshot['logo'],
                    //                 //   ),
                    //                 //   fit: BoxFit.contain,
                    //                 // ),
                    //                 // child: Image.asset(
                    //                 //   'images/user_icon_150670.webp',
                    //                 // ),
                    //               ),
                    //             ),
                    //           );
                    //           // return Image.network(
                    //           //   documentSnapshot['logo'],
                    //           //   fit: BoxFit.contain,
                    //           // );
                    //         } else {
                    //           return
                    Align(
                      child: Hero(
                        tag: 8,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.05,
                              bottom: MediaQuery.of(context).size.width * 0.01),
                          // child: Image.asset(
                          //   // 'images/user_icon_150670.webp',
                          //     'images/logo4.webp',
                          // ),
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

                              // 'images/stbt.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                          // child: Image.asset(
                          //   'images/user_icon_150670.webp',
                          // ),
                        ),
                      ),
                      // return Image.asset(
                      //   'images/user_icon_150670.webp',
                    ),
                    // }
                    //   } else {
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
                    //   child: Hero(
                    //     tag: 8,
                    //     child: Padding(
                    //       // padding: const EdgeInsets.only(top: 33),
                    //       padding: EdgeInsets.only(
                    //           top: MediaQuery.of(context).size.width * 0.15,
                    //           bottom: MediaQuery.of(context).size.width * 0.05),
                    //       child: Image.asset(
                    //         'images/user_icon_150670.webp',
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                width: MediaQuery.of(context).size.width * 0.4015,

                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125,
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      // width: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.4015,

                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 197, 55, 143),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Street Beat',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    StreamBuilder(
                        stream: _links.snapshots(),
                        builder: (context,
                            AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                          final QueryDocumentSnapshot<Object?>?
                              documentSnapshot = streamSnapshot.data?.docs[7];
                          if (streamSnapshot.hasData) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  // 'Date: 18th Feb',
                          '   Date:\n18th Feb',
                                  // documentSnapshot!['date'],
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                            );
                          } else {
                            // return CircularProgressIndicator();
                            return Container(
                              height: 35,
                            );
                          }
                        }
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
                        ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     // top: 10,
                    //     // left: 10,
                    //     // right: 10,
                    //     top: MediaQuery.of(context).size.height * 0.0125,
                    //     left: MediaQuery.of(context).size.width * 0.025,
                    //     right: MediaQuery.of(context).size.width * 0.025,
                    //   ),
                    //   child: FittedBox(
                    //     fit: BoxFit.scaleDown,
                    //     child: Text(
                    //       'Register here',
                    //       style: TextStyle(
                    //         fontSize: 22,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                margin: EdgeInsets.only(top: 70, bottom: 30),
                // margin: EdgeInsets.only(
                //     top: MediaQuery.of(context).size.height * 0.075,
                //     bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event9() => GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => eventwindow9()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2725,

          // margin: EdgeInsets.symmetric(horizontal: 6),
          // height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        // color: Color.fromARGB(255, 245, 239, 244),
                        // color: Colors.pink,
                        // color: Colors.white,
                        // color: Colors.white,
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[8];
                    //       if (streamSnapshot.hasData) {
                    //         if (documentSnapshot!['logo']?.isNotEmpty) {
                    //           return Align(
                    //             child: Hero(
                    //               tag: 9,
                    //               child: Padding(
                    //                 padding: EdgeInsets.only(
                    //                     top: MediaQuery.of(context).size.width *
                    //                         0.15,
                    //                     bottom:
                    //                         MediaQuery.of(context).size.width *
                    //                             0.05),
                    //                 child: CachedNetworkImage(
                    //                   imageUrl: documentSnapshot['logo'],
                    //                   // fit: BoxFit.contain,
                    //                   fit: BoxFit.cover,
                    //                   placeholder: (context, url) => Container(
                    //                     color: Colors.blue,
                    //                   ),
                    //                   errorWidget: (context, url, error) =>
                    //                       Container(
                    //                     // color: Colors.black,
                    //                     child: Icon(
                    //                       Icons.error_outline,
                    //                       // color: Colors.black,
                    //                       size: 50,
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 // child: Image.network(
                    //                 //   documentSnapshot['logo'],
                    //                 //   fit: BoxFit.contain,
                    //                 // ),
                    //                 // child: CachedNetworkImage(
                    //                 //   imageUrl: documentSnapshot['logo'],
                    //                 //   placeholder: (context, url) =>
                    //                 //       CircularProgressIndicator(),
                    //                 //   errorWidget: (context, url, error) =>
                    //                 //       Icon(Icons.error),
                    //                 // ),
                    //                 // child: Image(
                    //                 //   image: NetworkImageWithRetry(
                    //                 //     documentSnapshot['logo'],
                    //                 //   ),
                    //                 //   fit: BoxFit.contain,
                    //                 // ),
                    //                 // child: Image.asset(
                    //                 //   'images/user_icon_150670.webp',
                    //                 // ),
                    //               ),
                    //             ),
                    //           );
                    //           // return Image.network(
                    //           //   documentSnapshot['logo'],
                    //           //   fit: BoxFit.contain,
                    //           // );
                    //         } else {
                    //           return
                    Align(
                      child: Hero(
                        tag: 9,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.06,
                              // bottom: MediaQuery.of(context).size.width * 0.05,
                              left: 5,
                              right: 0),
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
                          ),
                          // child: Image.asset(
                          //   'images/user_icon_150670.webp',
                          // ),
                        ),
                      ),
                      // return Image.asset(
                      //   'images/user_icon_150670.webp',
                    ),
                    // }
                    //   } else {
                    //     return CircularProgressIndicator(
                    //       color: Colors.white,
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
                    //   child: Hero(
                    //     tag: 9,
                    //     child: Padding(
                    //       // padding: const EdgeInsets.only(top: 33),
                    //       padding: EdgeInsets.only(
                    //           top: MediaQuery.of(context).size.width * 0.15,
                    //           bottom: MediaQuery.of(context).size.width * 0.05),
                    //       child: Image.asset(
                    //         // 'images/Antaragnee.png',
                    //         'images/user_icon_150670.webp',
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                width: MediaQuery.of(context).size.width * 0.4015,

                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      // width: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.4015,

                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 255, 51, 99),
                        // color: Colors.pinkAccent,
                        // color: Colors.red,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'String Theory',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[8];
                    //       if (streamSnapshot.hasData) {
                    // return
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          // 'Date: 18th Feb',
                          '   Date:\n18th Feb',
                          // documentSnapshot!['date'],
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    //   } else {
                    //     // return CircularProgressIndicator();
                    //     return Container(
                    //       height: 35,
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
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     // top: 10,
                    //     // left: 10,
                    //     // right: 10,
                    //     top: MediaQuery.of(context).size.height * 0.0125,
                    //     left: MediaQuery.of(context).size.width * 0.025,
                    //     right: MediaQuery.of(context).size.width * 0.025,
                    //   ),
                    //   child: FittedBox(
                    //     fit: BoxFit.scaleDown,
                    //     child: Text(
                    //       'Register here',
                    //       style: TextStyle(
                    //         fontSize: 22,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                margin: EdgeInsets.only(top: 70, bottom: 30),
                // margin: EdgeInsets.only(
                //     top: MediaQuery.of(context).size.height * 0.075,
                //     bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event10() => GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => eventwindow10()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2725,

          // margin: EdgeInsets.symmetric(horizontal: 6),
          // height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 46, 27, 89),
                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 10,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding:
                              EdgeInsets.only(top: 40, bottom: 10, left: 10),

                          // top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            // 'images/Synchronize_logo.png',
                            // 'images/Synchronize (2).png',
                            'images/Sync_Logo2-01.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                width: MediaQuery.of(context).size.width * 0.4015,

                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      // width: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.4015,

                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 97, 91, 237),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Synchronize',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[9];
                    //       if (streamSnapshot.hasData) {
                    //         return
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          // 'Date: 19th Feb',
                          '   Date:\n19th Feb',

                          // documentSnapshot!['date'],
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    // }
                    //   else {
                    //     // return CircularProgressIndicator();
                    //     return Container(
                    //       height: 35,
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
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     // top: 10,
                    //     // left: 10,
                    //     // right: 10,
                    //     top: MediaQuery.of(context).size.height * 0.0125,
                    //     left: MediaQuery.of(context).size.width * 0.025,
                    //     right: MediaQuery.of(context).size.width * 0.025,
                    //   ),
                    //   child: FittedBox(
                    //     fit: BoxFit.scaleDown,
                    //     child: Text(
                    //       'Register here',
                    //       style: TextStyle(
                    //         fontSize: 22,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                margin: EdgeInsets.only(top: 70, bottom: 30),
                // margin: EdgeInsets.only(
                //     top: MediaQuery.of(context).size.height * 0.075,
                //     bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

  Widget Event11() => GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => eventwindow11()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2725,

          // margin: EdgeInsets.symmetric(horizontal: 6),
          // height: MediaQuery.of(context).size.height * 0.275,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),

          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 244, 255, 44),
                        color: Color.fromARGB(255, 117, 97, 192),

                        // borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.05),
                        boxShadow: shadowList,
                      ),
                      // margin: EdgeInsets.only(top: 30),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.0375),
                    ),
                    Align(
                      child: Hero(
                        tag: 11,
                        child: Padding(
                          // padding: const EdgeInsets.only(top: 33),
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.0825),
                          child: Image.asset(
                            'images/unkahi_logo transparent-01.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 25),
                width: MediaQuery.of(context).size.width * 0.4015,

                padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).size.height * 0.03125
                    ),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      // width: 154,
                      // width: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.4015,

                      // height: 50,
                      height: MediaQuery.of(context).size.height * 0.0625,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 216, 161, 187),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 0),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Unkahi',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    // StreamBuilder(
                    //     stream: _links.snapshots(),
                    //     builder: (context,
                    //         AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                    //       final QueryDocumentSnapshot<Object?>?
                    //           documentSnapshot = streamSnapshot.data?.docs[10];
                    //       if (streamSnapshot.hasData) {
                    //         return
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          // 'Date: 18th Feb',
                          '   Date:\n18th Feb',
                          // documentSnapshot!['date'],
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    // }
                    // else {
                    //   // return CircularProgressIndicator();
                    //   return Container(
                    //     height: 35,
                    //   );
                    // }
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
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //     // top: 10,
                    //     // left: 10,
                    //     // right: 10,
                    //     top: MediaQuery.of(context).size.height * 0.0125,
                    //     left: MediaQuery.of(context).size.width * 0.025,
                    //     right: MediaQuery.of(context).size.width * 0.025,
                    //   ),
                    //   child: FittedBox(
                    //     fit: BoxFit.scaleDown,
                    //     child: Text(
                    //       'Register here',
                    //       style: TextStyle(
                    //         fontSize: 22,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                margin: EdgeInsets.only(top: 70, bottom: 30),
                // margin: EdgeInsets.only(
                //     top: MediaQuery.of(context).size.height * 0.075,
                //     bottom: MediaQuery.of(context).size.height * 0.025),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: shadowList,
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(20),
                      // bottomRight: Radius.circular(20),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.05),
                    )),
              )
            ],
          ),
        ),
      );

//

}
