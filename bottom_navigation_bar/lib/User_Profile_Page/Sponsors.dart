// import 'dart:js';
import 'dart:ui';

import 'package:bottom_navigation_bar/Store.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/userprofilepage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;

// class Storage {
//   final firebase_storage.FirebaseStorage storage =
//       firebase_storage.FirebaseStorage.instance;

//   Future<firebase_storage.ListResult> listFiles() async {
//     firebase_storage.ListResult results = await storage.ref('files').listAll();

//     results.items.forEach((firebase_storage.Reference ref) {
//       print('Found file: $ref');
//     });
//     return results;
//   }
// }

class spons extends StatefulWidget {
  const spons({Key? key}) : super(key: key);

  @override
  State<spons> createState() => _sponsState();
}

class _sponsState extends State<spons> {
  // final Storage storage = Storage();
  // Future<List<FirebaseFile>>? futureFiles;
  //   futureFiles = FirebaseApi.listAll('files/');

  // Future<List<FirebaseFile>>? futureFiles = FirebaseApi.listAll('files/');

  // @override
  // void initState() {
  //   super.initState();

  //   futureFiles = FirebaseApi.listAll('files/');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 47, 81, 234),
      // backgroundColor: Color.fromARGB(255, 185, 198, 255),
      // backgroundColor: Color.fromARGB(255, 201, 211, 255),
      // backgroundColor: Color.fromARGB(255, 226, 231, 255),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      // backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Text('Past Sponsors'),
      ),

      // body: FutureBuilder<List<FirebaseFile>>(
      //   // future: storage.listFiles(),
      //   future: futureFiles,
      //   builder: (context, snapshot) {
      //     switch (snapshot.connectionState) {
      //       case ConnectionState.waiting:
      //         return Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       default:
      //         if (snapshot.hasError) {
      //           return Center(
      //             child: Text('Some Error Occured'),
      //           );
      //         }
      //         final files = snapshot.data;

      //         if (files?.length == 0) {
      //           // return Text('Something went wrong');
      //           return Padding(
      //             // padding: const EdgeInsets.only(top: 30.0),
      //             padding: const EdgeInsets.only(top: 220.0),
      //             child: Container(
      //               padding: EdgeInsets.only(left: 20, right: 20),
      //               child: ClipRRect(
      //                 borderRadius: BorderRadius.circular(15.0),
      //                 // child: Text(
      //                 //   'Coming Soon',
      //                 //   style: TextStyle(fontSize: 30, color: Colors.black),
      //                 // ),
      //                 child: Image.asset(
      //                   // 'images/coming-soon-under-construction-responsive-website-template1.jpg',
      //                   'images/newcomingsoon.jpg',
      //                 ),
      //               ),
      //             ),
      //           );
      //         }

      //         if (snapshot.hasData) {
      //           final sponsors = snapshot.data!;
      //           return Padding(
      //             padding: const EdgeInsets.only(top: 15.0),
      //             child: GridView.builder(
      //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //                   crossAxisCount: 2),
      //               itemCount: files?.length,
      //               itemBuilder: (context, index) {
      //                 final file = files![index];
      //                 return buildFile(context, file);
      //               },
      //               // crossAxisCount: 2,
      //               // mainAxisSpacing: 10,
      //               // // crossAxisSpacing: MediaQuery.of(context).size.width * 0.0125,
      //               // // children: [...myImagesAdapted],
      //               // children: sponsors.map(buildSpons).toList(),
      //             ),
      //           );
      //         } else {
      //           return Text('Something went wrong');
      //           // return Padding(
      //           //   // padding: const EdgeInsets.only(top: 30.0),
      //           //   padding: const EdgeInsets.only(top: 220.0),
      //           //   child: Container(
      //           //     padding: EdgeInsets.only(left: 10, right: 10),
      //           //     child: ClipRRect(
      //           //       borderRadius: BorderRadius.circular(15.0),
      //           //       child: Text(
      //           //         'Coming Soon',
      //           //         style: TextStyle(fontSize: 30, color: Colors.black),
      //           //       ),
      //           //       // child: Image.asset(
      //           //       //   // 'images/coming-soon-under-construction-responsive-website-template1.jpg',
      //           //       //   'images/newcomingsoon.jpg',
      //           //       // ),
      //           //     ),
      //           //   ),
      //           // );
      //         }
      //     }
      //   },
      // ),
      // future: futureFiles,
      // builder: (BuildContext context,
      //     AsyncSnapshot<firebase_storage.ListResult> snapshot) {
      //   // final files = snapshot.data;

      //   if (snapshot.connectionState == ConnectionState.done &&
      //       snapshot.hasData) {
      //     final sponsors = snapshot.data!;
      //     return Padding(
      //         padding: const EdgeInsets.only(top: 15.0),
      //         child: GridView.builder(
      //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //                 crossAxisCount: 2),
      //             itemCount: 6,
      //             itemBuilder: (context, index) {
      //               // final file = files![index];
      //               final filename = snapshot.data!.items[index].name;
      //               // final fileurl = snapshot.data!;
      //               // final file = FirebaseFile(ref: ref, name: filename, url: fileurl);

      //               // final file = files?.items[index].;
      //               // return buildFile(context, file);
      //               return Container(
      //                 child: Column(
      //                   children: [
      //                     // Container(
      //                     //   height: 150,
      //                     //   decoration: BoxDecoration(
      //                     //       border: Border.all(
      //                     //           color: Color.fromARGB(255, 0, 0, 0))),
      //                     //   // width: 150,
      //                     //   width: 150,
      //                     //   child: Image.network(
      //                     //     // sponsor.url,
      //                     //     // file.url,
      //                     //     fileurl,

      //                     //     // fit: BoxFit.cover,
      //                     //     fit: BoxFit.contain,
      //                     //   ),
      //                     // ),
      //                     Padding(
      //                       padding: const EdgeInsets.only(
      //                           top: 2.0, left: 20, right: 20),
      //                       child: Container(
      //                           width: 180,
      //                           height: 30,
      //                           // decoration:
      //                           //     BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      //                           // color: Colors.amber,
      //                           child: FittedBox(
      //                               fit: BoxFit.scaleDown,
      //                               child: Text(
      //                                 // file.name.substring(1),
      //                                 // file.name,
      //                                 filename,
      //                                 // sponsor.name.substring(1, 3),
      //                                 // sponsor.name,
      //                                 style: TextStyle(
      //                                   fontSize: 18,
      //                                   // color: Colors.white,
      //                                   color: Colors.black,
      //                                 ),
      //                               ))),
      //                     ),
      //                   ],
      //                 ),
      //               );
      //             }));
      //   }
      //   if (snapshot.connectionState == ConnectionState.waiting ||
      //       !snapshot.hasData) {
      //     return CircularProgressIndicator();
      //   }
      //   return Container();
      // },
      // ),

      // body: FutureBuilder(
      //   future: storage.listFiles(),
      //   // future: futureFiles,
      //   builder: (BuildContext context,
      //       AsyncSnapshot<firebase_storage.ListResult> snapshot) {
      //     // final files = snapshot.data;

      //     if (snapshot.connectionState == ConnectionState.done &&
      //         snapshot.hasData) {
      //       final sponsors = snapshot.data!;
      //       return Padding(
      //           padding: const EdgeInsets.only(top: 15.0),
      //           child: GridView.builder(
      //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //                   crossAxisCount: 2),
      //               itemCount: 6,
      //               itemBuilder: (context, index) {
      //                 // final file = files![index];
      //                 final filename = snapshot.data!.items[index].name;
      //                 // final fileurl = snapshot.data!;
      //                 // final file = FirebaseFile(ref: ref, name: filename, url: fileurl);

      //                 // final file = files?.items[index].;
      //                 // return buildFile(context, file);
      //                 return Container(
      //                   child: Column(
      //                     children: [
      //                       // Container(
      //                       //   height: 150,
      //                       //   decoration: BoxDecoration(
      //                       //       border: Border.all(
      //                       //           color: Color.fromARGB(255, 0, 0, 0))),
      //                       //   // width: 150,
      //                       //   width: 150,
      //                       //   child: Image.network(
      //                       //     // sponsor.url,
      //                       //     // file.url,
      //                       //     fileurl,

      //                       //     // fit: BoxFit.cover,
      //                       //     fit: BoxFit.contain,
      //                       //   ),
      //                       // ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(
      //                             top: 2.0, left: 20, right: 20),
      //                         child: Container(
      //                             width: 180,
      //                             height: 30,
      //                             // decoration:
      //                             //     BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      //                             // color: Colors.amber,
      //                             child: FittedBox(
      //                                 fit: BoxFit.scaleDown,
      //                                 child: Text(
      //                                   // file.name.substring(1),
      //                                   // file.name,
      //                                   filename,
      //                                   // sponsor.name.substring(1, 3),
      //                                   // sponsor.name,
      //                                   style: TextStyle(
      //                                     fontSize: 18,
      //                                     // color: Colors.white,
      //                                     color: Colors.black,
      //                                   ),
      //                                 ))),
      //                       ),
      //                     ],
      //                   ),
      //                 );
      //               }));
      //     }
      //     if (snapshot.connectionState == ConnectionState.waiting ||
      //         !snapshot.hasData) {
      //       return CircularProgressIndicator();
      //     }
      //     return Container();
      //   },
      // ),
//
//
//
      //

      // body: FutureBuilder<List<FirebaseFile>>(
      //   future: futureFiles,
      //   builder: (context, snapshot) {
      //     switch (snapshot.connectionState) {
      //       case ConnectionState.waiting:
      //         return Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       default:
      //         if (snapshot.hasError) {
      //           return Center(
      //             child: Text('Some Error Occured'),
      //           );
      //         }
      //         final files = snapshot.data;

      //         if (files?.length == 0) {
      //           // return Text('Something went wrong');
      //           return Padding(
      //             // padding: const EdgeInsets.only(top: 30.0),
      //             padding: const EdgeInsets.only(top: 220.0),
      //             child: Container(
      //               padding: EdgeInsets.only(left: 20, right: 20),
      //               child: ClipRRect(
      //                 borderRadius: BorderRadius.circular(15.0),
      //                 // child: Text(
      //                 //   'Coming Soon',
      //                 //   style: TextStyle(fontSize: 30, color: Colors.black),
      //                 // ),
      //                 child: Image.asset(
      //                   // 'images/coming-soon-under-construction-responsive-website-template1.jpg',
      //                   'images/newcomingsoon.jpg',
      //                 ),
      //               ),
      //             ),
      //           );
      //         }

      //         if (snapshot.hasData) {
      //           final sponsors = snapshot.data!;
      //           return Padding(
      //             padding: const EdgeInsets.only(top: 15.0),
      //             child: GridView.builder(
      //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //                   crossAxisCount: 2),
      //               itemCount: files?.length,
      //               itemBuilder: (context, index) {
      //                 final file = files![index];
      //                 return buildFile(context, file);
      //               },
      //               // crossAxisCount: 2,
      //               // mainAxisSpacing: 10,
      //               // // crossAxisSpacing: MediaQuery.of(context).size.width * 0.0125,
      //               // // children: [...myImagesAdapted],
      //               // children: sponsors.map(buildSpons).toList(),
      //             ),
      //           );
      //         } else {
      //           return Text('Something went wrong');
      //           // return Padding(
      //           //   // padding: const EdgeInsets.only(top: 30.0),
      //           //   padding: const EdgeInsets.only(top: 220.0),
      //           //   child: Container(
      //           //     padding: EdgeInsets.only(left: 10, right: 10),
      //           //     child: ClipRRect(
      //           //       borderRadius: BorderRadius.circular(15.0),
      //           //       child: Text(
      //           //         'Coming Soon',
      //           //         style: TextStyle(fontSize: 30, color: Colors.black),
      //           //       ),
      //           //       // child: Image.asset(
      //           //       //   // 'images/coming-soon-under-construction-responsive-website-template1.jpg',
      //           //       //   'images/newcomingsoon.jpg',
      //           //       // ),
      //           //     ),
      //           //   ),
      //           // );
      //         }
      //     }
      //   },
      // ),

      // body: FutureBuilder<List<FirebaseFile>>(
      //   future: futureFiles,
      //   builder: (context, snapshot) {
      //     switch (snapshot.connectionState) {
      //       case ConnectionState.waiting:
      //         return Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       default:
      //         if (snapshot.hasError) {
      //           return Center(
      //             child: Text('Some Error Occured'),
      //           );
      //         }
      //         final files = snapshot.data;

      //         if (files?.length == 0) {
      //           // return Text('Something went wrong');
      //           return Padding(
      //             // padding: const EdgeInsets.only(top: 30.0),
      //             padding: const EdgeInsets.only(top: 220.0),
      //             child: Container(
      //               padding: EdgeInsets.only(left: 20, right: 20),
      //               child: ClipRRect(
      //                 borderRadius: BorderRadius.circular(15.0),
      //                 // child: Text(
      //                 //   'Coming Soon',
      //                 //   style: TextStyle(fontSize: 30, color: Colors.black),
      //                 // ),
      //                 child: Image.asset(
      //                   // 'images/coming-soon-under-construction-responsive-website-template1.jpg',
      //                   'images/newcomingsoon.jpg',
      //                 ),
      //               ),
      //             ),
      //           );
      //         }

      //         if (snapshot.hasData) {
      //           final sponsors = snapshot.data!;
      //           return Padding(
      //             padding: const EdgeInsets.only(top: 15.0),
      //             child: GridView.builder(
      //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //                   crossAxisCount: 2),
      //               itemCount: files?.length,
      //               itemBuilder: (context, index) {
      //                 final file = files![index];
      //                 return buildFile(context, file);
      //               },
      //               // crossAxisCount: 2,
      //               // mainAxisSpacing: 10,
      //               // // crossAxisSpacing: MediaQuery.of(context).size.width * 0.0125,
      //               // // children: [...myImagesAdapted],
      //               // children: sponsors.map(buildSpons).toList(),
      //             ),
      //           );
      //         } else {
      //           return Text('Something went wrong');
      //           // return Padding(
      //           //   // padding: const EdgeInsets.only(top: 30.0),
      //           //   padding: const EdgeInsets.only(top: 220.0),
      //           //   child: Container(
      //           //     padding: EdgeInsets.only(left: 10, right: 10),
      //           //     child: ClipRRect(
      //           //       borderRadius: BorderRadius.circular(15.0),
      //           //       child: Text(
      //           //         'Coming Soon',
      //           //         style: TextStyle(fontSize: 30, color: Colors.black),
      //           //       ),
      //           //       // child: Image.asset(
      //           //       //   // 'images/coming-soon-under-construction-responsive-website-template1.jpg',
      //           //       //   'images/newcomingsoon.jpg',
      //           //       // ),
      //           //     ),
      //           //   ),
      //           // );
      //         }
      //     }
      //   },
      // ),

      //
      //
      //

      body: StreamBuilder<List<Sponsor>>(
        stream: readSponsors(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final sponsors = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                // crossAxisSpacing: MediaQuery.of(context).size.width * 0.0125,
                // children: [...myImagesAdapted],
                children: sponsors.map(buildSpons).toList(),
              ),
            );
          } else {
            return Container();
            // return Padding(
            //   // padding: const EdgeInsets.only(top: 30.0),
            //   padding: const EdgeInsets.only(top: 220.0),
            //   child: Container(
            //     padding: EdgeInsets.only(left: 10, right: 10),
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(15.0),
            //       child: Image.asset(
            //         // 'images/coming-soon-under-construction-responsive-website-template1.jpg',
            //         'images/newcomingsoon.jpg',
            //       ),
            //     ),
            //   ),
            // );
          }
        },
      ),
      // child: Column(
      //   children: [
      //     // SizedBox(
      //     //   height: 48,
      //     // ),
      //     // Container(
      //     //   // decoration: BoxDecoration(boxShadow: ),
      //     //   child: Row(
      //     //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     //     children: [
      //     //       Material(
      //     //         color: Color.fromARGB(255, 47, 81, 234),
      //     //         child: IconButton(
      //     //             // iconSize: 30,
      //     //             iconSize: MediaQuery.of(context).size.width * 0.065,
      //     //             icon: Icon(Icons.arrow_back),

      //     //             // splashColor: Colors.red,
      //     //             // splashRadius: 20,
      //     //             onPressed: () {
      //     //               Navigator.pop(
      //     //                 context,
      //     //                 MaterialPageRoute(
      //     //                     builder: (context) => userprofilepage()),
      //     //               );
      //     //             }),
      //     //       ),
      //     //       SizedBox(
      //     //         width: 1,
      //     //       ),
      //     //       Container(
      //     //         height: 57,
      //     //         width: 320,
      //     //         child: Center(
      //     //           child: Text(
      //     //             'Proud Sponsors',
      //     //             style: TextStyle(fontSize: 33, color: Colors.white),
      //     //           ),
      //     //         ),
      //     //         decoration: BoxDecoration(
      //     //           // boxShadow: [
      //     //           //   BoxShadow(
      //     //           //     color: const Color(0xFF000000),
      //     //           //     blurRadius: 20.0,
      //     //           //   ),
      //     //           // ],
      //     //           color: Color.fromARGB(255, 44, 70, 216),
      //     //           borderRadius: BorderRadius.circular(
      //     //             20,
      //     //           ),
      //     //         ),
      //     //       ),
      //     //     ],
      //     //   ),
      //     // ),
      //     // SizedBox(
      //     //   height: 10,
      //     // ),
      //     imagesgridview2(),
      //   ],
      // ),
    );
  }

  // Widget imagesgridview2() => Container(
  //       // height: 400,
  //       height: MediaQuery.of(context).size.height - 96.8,
  //       color: Colors.white,
  //       child: GridView.count(
  //         padding: EdgeInsets.only(
  //           // top: 10,
  //           top: MediaQuery.of(context).size.height * 0.0125,
  //           // left: 5,
  //           left: MediaQuery.of(context).size.width * 0.0125,
  //           right: MediaQuery.of(context).size.width * 0.0125,
  //         ),
  //         crossAxisCount: 2,
  //         // mainAxisSpacing: 5,
  //         // crossAxisSpacing: 5,
  //         crossAxisSpacing: MediaQuery.of(context).size.width * 0.0125,
  //         children: [...myImagesAdapted],
  //       ),
  //     );

  // final List<Column> myImagesAdapted = [
  //   Column(
  //     children: [
  //       Image(
  //         image: AssetImage('images/image1.jpg'),
  //         fit: BoxFit.cover,
  //       ),
  //       Center(
  //         child: Text(
  //           'Title Sponsor',
  //           style: TextStyle(
  //             fontSize: 20,
  //             // color: Colors.white,
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  //   Column(
  //     children: [
  //       Image(
  //         image: AssetImage('images/image1.jpg'),
  //         fit: BoxFit.cover,
  //       ),
  //       Center(
  //         child: Text(
  //           'Platinum Sponsor',
  //           style: TextStyle(
  //             fontSize: 20,
  //             // color: Colors.white,
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  //   Column(
  //     children: [
  //       Image(
  //         image: AssetImage('images/image1.jpg'),
  //         fit: BoxFit.cover,
  //       ),
  //       Center(
  //         child: Column(
  //           children: [
  //             Text(
  //               'Major Event',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 // color: Colors.white,
  //               ),
  //             ),
  //             Text(
  //               'Sponsor',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 // color: Colors.white,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ],
  //   ),
  //   Column(
  //     children: [
  //       Image(
  //         image: AssetImage('images/image1.jpg'),
  //         fit: BoxFit.cover,
  //       ),
  //       Center(
  //         child: Text(
  //           'Event Partner',
  //           style: TextStyle(
  //             fontSize: 20,
  //             // color: Colors.white,
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  //   Column(
  //     children: [
  //       Image(
  //         image: AssetImage('images/image1.jpg'),
  //         fit: BoxFit.cover,
  //       ),
  //       Center(
  //         child: Text(
  //           'Information Sponsor',
  //           style: TextStyle(
  //             fontSize: 20,
  //             // color: Colors.white,
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  //   Column(
  //     children: [
  //       Image(
  //         image: AssetImage('images/image1.jpg'),
  //         fit: BoxFit.cover,
  //       ),
  //       Center(
  //         child: Column(
  //           children: [
  //             Text(
  //               'Handicraft and',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 // color: Colors.white,
  //               ),
  //             ),
  //             Text(
  //               'Handloom Sponsor',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 // color: Colors.white,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ],
  //   ),
  //   Column(
  //     children: [
  //       Image(
  //         image: AssetImage('images/image1.jpg'),
  //         fit: BoxFit.cover,
  //       ),
  //       Center(
  //         child: Text(
  //           'Literature Sponsor',
  //           style: TextStyle(
  //             fontSize: 20,
  //             // color: Colors.white,
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  //   Column(
  //     children: [
  //       Image(
  //         image: AssetImage('images/image1.jpg'),
  //         fit: BoxFit.cover,
  //       ),
  //       Center(
  //         child: Column(
  //           children: [
  //             Text(
  //               'Study Abroad',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 // color: Colors.white,
  //               ),
  //             ),
  //             Text(
  //               'Sponsor',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 // color: Colors.white,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ],
  //   ),
  //   Column(
  //     children: [
  //       Image(
  //         image: AssetImage('images/image1.jpg'),
  //         fit: BoxFit.cover,
  //       ),
  //       Center(
  //         child: Text(
  //           'Medical Sponsor',
  //           style: TextStyle(
  //             fontSize: 20,
  //             // color: Colors.white,
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  //   Column(
  //     children: [
  //       Image(
  //         image: AssetImage('images/image1.jpg'),
  //         fit: BoxFit.cover,
  //       ),
  //       Center(
  //         child: Text(
  //           'IT Sponsor',
  //           style: TextStyle(
  //             fontSize: 20,
  //             // color: Colors.white,
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),

  // Column(
  //   children: [
  //     Image(
  //       image: AssetImage('images/image1.jpg'),
  //       fit: BoxFit.cover,
  //     ),
  //     Text('Platinum Sponsor'),
  //   ],
  // ),
  // Column(
  //   children: [
  //     Image(
  //       image: AssetImage('images/image1.jpg'),
  //       fit: BoxFit.cover,
  //     ),
  //     Text('Major Event Sponsor'),
  //   ],
  // ),
  // Column(
  //   children: [
  //     Image(
  //       image: AssetImage('images/image1.jpg'),
  //       fit: BoxFit.cover,
  //     ),
  //     Text('Event Partner'),
  //   ],
  // ),
  // Column(
  //   children: [
  //     Image(
  //       image: AssetImage('images/image1.jpg'),
  //       fit: BoxFit.cover,
  //     ),
  //     Text('Information Sponsor'),
  //   ],
  // ),
  // Column(
  //   children: [
  //     Image(
  //       image: AssetImage('images/image1.jpg'),
  //       fit: BoxFit.cover,
  //     ),
  //     Text('Handicraft and Handloom Sponsor'),
  //   ],
  // ),
  // Image(
  //   image: AssetImage('images/image2.jpeg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image3.jpeg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image4.jpg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image5.jpeg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image6.jpg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image7.jpg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image8.jpg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image9.jpg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image10.jpg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image11.jpg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image12.jpg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image13.jpg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image14.jpg'),
  //   fit: BoxFit.cover,
  // ),
  // Image(
  //   image: AssetImage('images/image15.jpg'),
  //   fit: BoxFit.cover,
  // ),
  // ];
}

// Widget buildFile(BuildContext context, FirebaseFile file) => Container(
//       child: Column(
//         children: [
//           Container(
//             height: 150,
//             decoration: BoxDecoration(
//                 border: Border.all(color: Color.fromARGB(255, 0, 0, 0))),
//             // width: 150,
//             width: 150,
//             child: Image.network(
//               // sponsor.url,
//               file.url,
//               // fit: BoxFit.cover,
//               fit: BoxFit.contain,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 2.0, left: 20, right: 20),
//             child: Container(
//                 width: 180,
//                 height: 30,
//                 // decoration:
//                 //     BoxDecoration(border: Border.all(color: Colors.blueAccent)),
//                 // color: Colors.amber,
//                 child: FittedBox(
//                     fit: BoxFit.scaleDown,
//                     child: Text(
//                       // file.name.substring(1),
//                       file.name,
//                       // sponsor.name.substring(1, 3),
//                       // sponsor.name,
//                       style: TextStyle(
//                         fontSize: 18,
//                         // color: Colors.white,
//                         color: Colors.black,
//                       ),
//                     ))),
//           ),
//         ],
//       ),
//     );

// class FirebaseApi {
//   static Future<List<String>> _getDownloadLinks(List<Reference> refs) =>
//       Future.wait(refs.map((ref) => ref.getDownloadURL()).toList());
//     //   FirebaseFirestore.instance.collection('sponsors')
//     // .snapshots()
//     // .map((snapshot) =>
//     //     snapshot.docs.map((doc) => .fromJSON(doc.data())).toList());

//   static Future<List<FirebaseFile>> listAll(String path) async {
//     final ref = FirebaseStorage.instance.ref(path);
//     final result = await ref.listAll();

//     final urls = await _getDownloadLinks(result.items);

//     return urls
//         .asMap()
//         .map((index, url) {
//           final ref = result.items[index];
//           var n = ref.name.length;
//           final name = ref.name.substring(1, n - 4);
//           final file = FirebaseFile(ref: ref, name: name, url: url);

//           return MapEntry(index, file);
//         })
//         .values
//         .toList();
//   }
// }

// class FirebaseFile {
//   final Reference ref;
//   final String name;
//   final String url;

//   const FirebaseFile({
//     required this.ref,
//     required this.name,
//     required this.url,
//   });
// }

// class FirebaseFile {}

Stream<List<Sponsor>> readSponsors() => FirebaseFirestore.instance
    .collection('sponsors')
    .snapshots()
    .map((snapshot) =>
        snapshot.docs.map((doc) => Sponsor.fromJSON(doc.data())).toList());

class Sponsor {
  final String name;
  final String url;

  Sponsor({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toJSON() => {
        'name': name,
        'url': url,
      };

  static Sponsor fromJSON(Map<String, dynamic> json) =>
      Sponsor(name: json['name'], url: json['url']);
}

Widget buildSpons(Sponsor sponsor) => Container(
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 0, 0, 0))),
            // width: 150,
            width: 150,
            child: CachedNetworkImage(
              imageUrl: sponsor.url,
              fit: BoxFit.contain,
              placeholder: (context, url) => Container(
                color: Colors.white,
              ),
              errorWidget: (context, url, error) => Container(
                // color: Colors.black,
                child: Icon(
                  Icons.error_outline,
                  // color: Colors.black,
                  size: 50,
                ),
              ),
            ),
            // child: Image.network(
            //   sponsor.url,
            //   // fit: BoxFit.cover,
            //   fit: BoxFit.contain,
            // ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0, left: 20, right: 20),
            child: Container(
                width: 180,
                height: 30,
                // decoration:
                //     BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                // color: Colors.amber,
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      // sponsor.name.substring(1, 3),
                      sponsor.name,
                      style: TextStyle(
                        fontSize: 18,
                        // color: Colors.white,
                        color: Colors.black,
                      ),
                    ))),
          ),
        ],
      ),
    );

// class Storage {

//   final firebase_storage.FirebaseStorage storage =
//       firebase_storage.FirebaseStorage.instance;

//   Future<firebase_storage.ListResult> listFiles() async {
//     firebase_storage.ListResult results = await storage.ref('files').listAll();

//     results.items.forEach((firebase_storage.Reference ref) {
//       print('Found file: $ref');
//     });
//     return results;
//   }
// }
