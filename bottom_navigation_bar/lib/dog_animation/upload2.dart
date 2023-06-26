// import 'dart:html';
import 'dart:io';
import 'package:bottom_navigation_bar/Events_Page/eventwindow.dart';
import 'package:bottom_navigation_bar/Home_Page/homepage.dart';
import 'package:bottom_navigation_bar/dog_animation/uploader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

// class upload extends StatefulWidget {
//   const upload({super.key});

//   @override
//   State<upload> createState() => _uploadState();
// }

// class _uploadState extends State<upload> {
//   @override
//   Widget build(BuildContext context) {
//     // return MaterialApp(
//     //   debugShowCheckedModeBanner: false,
//       // body: ElevatedButton(
//       //   onPressed: () => {},
//       //   child: Text('Upload'),
//       // ),
//       // home: upload2(),
//     // );
//   }
// }

class upload2 extends StatefulWidget {
  const upload2({super.key});

  @override
  State<upload2> createState() => _upload2State();
}

class _upload2State extends State<upload2> {
  File? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    XFile? selected = await ImagePicker().pickImage(source: source);
    setState(() {
      _imageFile = File(selected!.path);
      // _imageFile = selected;
    });

    // void _clear() {
    //   setState(() {
    //     _imageFile = null;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 166, 243, 255),
        backgroundColor: Color.fromARGB(255, 216, 234, 243),
        // backgroundColor: ,
        appBar: AppBar(title: Text('Image Upload')),
        bottomNavigationBar: BottomAppBar(
          // color: Colors.black,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.indigo),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.0625),
                  side: BorderSide(color: Colors.white),
                ),
              ),
            ),
            // height: 100,
            // style: ElevatedButton.styleFrom(
            //   primary: Colors.teal,
            // ),
            onPressed: () => {_pickImage(ImageSource.camera)},
            child: Container(
              // padding: EdgeInsets.only(30),
              // margin: EdgeInsets.only(left: 100),
              // width: 100,
              child: Text('Capture Image'),
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            if (_imageFile != null) ...[
              Padding(
                padding: const EdgeInsets.only(
                    top: 40, left: 20, right: 20, bottom: 20),
                child: Image.file(_imageFile!),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: _clear,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.indigo),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.0625),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    child: Icon(
                      Icons.refresh,
                    ),
                  )
                ],
              ),
              Uploader(file: _imageFile!),
            ] else ...[
              Container(
                decoration: BoxDecoration(
                    // color: Colors.blueGrey,
                    color: Color.fromARGB(255, 0, 136, 122),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                margin: EdgeInsets.only(
                  top: 40,
                  left: 30,
                  right: 30,
                ),
                child: Center(
                  child: Text(
                    '     Upload a photo or a selfie of\n    you at any event at Blithchron.\n\nThe top submissions will be given\n                 exciting prizes.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ]
            // else ...[
            //   // Container(
            //   //   padding: EdgeInsets.only(top: 100, left: 30, right: 30),
            //   //   child: Container(
            //   //     color: Colors.blueGrey,
            //   //     child: Text(
            //   //         'Participate in the contests available here to stand a chance to win exciting prizes.'),
            //   //   ),
            //   // )
            //   Container(
            //     decoration: BoxDecoration(
            //         // color: Colors.blueGrey,
            //         color: Color.fromARGB(255, 0, 136, 122),
            //         borderRadius: BorderRadius.all(Radius.circular(10))),
            //     padding: EdgeInsets.only(
            //       top: 10,
            //       bottom: 10,
            //     ),
            //     margin: EdgeInsets.only(
            //       top: 40,
            //       left: 30,
            //       right: 30,
            //     ),
            //     child: Center(
            //       child: Text(
            //         '  Participate in the contests\navailable here to win exciting\n                    prizes.',
            //         style: TextStyle(
            //           fontSize: 20,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ),
            //   SizedBox(
            //     height: 30,
            //   ),
            //   // Container(
            //   //   width: 300,
            //   //   color: Colors.green,
            //   //   child: Text('Available Contests'),
            //   // )
            //   // Container(
            //   //   // height: 45,
            //   //   height: MediaQuery.of(context).size.height * 0.05625,
            //   //   decoration: BoxDecoration(
            //   //     color: Color.fromARGB(255, 60, 158, 207),
            //   //     borderRadius: BorderRadius.circular(
            //   //       MediaQuery.of(context).size.width * 0.025,
            //   //     ),
            //   //   ),
            //   //   padding: EdgeInsets.only(
            //   //       // left: 15,
            //   //       left: MediaQuery.of(context).size.width * 0.0375),
            //   //   // color: Color.fromARGB(255, 5, 117, 157),
            //   //   // color: Color.fromARGB(255, 60, 158, 207),
            //   //   child: Row(
            //   //     children: [
            //   //       Text(
            //   //         'Available Contests',
            //   //         style: TextStyle(
            //   //           fontSize: 24,
            //   //           color: Color.fromARGB(255, 255, 255, 255),
            //   //           // fontWeight: FontWeight.bold,
            //   //         ),
            //   //       ),
            //   //     ],
            //   //   ),
            //   // ),
            //   Padding(
            //     padding: EdgeInsets.only(
            //       // top: 8.0,
            //       top: MediaQuery.of(context).size.height * 0.01,
            //       // left: 10,
            //       left: MediaQuery.of(context).size.width * 0.025,
            //       right: MediaQuery.of(context).size.width * 0.025,
            //     ),
            //     child: Container(
            //       // height: 45,
            //       height: MediaQuery.of(context).size.height * 0.05625,
            //       decoration: BoxDecoration(
            //         color: Color.fromARGB(255, 60, 158, 207),
            //         borderRadius: BorderRadius.circular(
            //           MediaQuery.of(context).size.width * 0.025,
            //         ),
            //       ),
            //       padding: EdgeInsets.only(
            //           // left: 15,
            //           left: MediaQuery.of(context).size.width * 0.0375),
            //       // color: Color.fromARGB(255, 5, 117, 157),
            //       // color: Color.fromARGB(255, 60, 158, 207),
            //       child: Row(
            //         children: [
            //           Text(
            //             'Available Contests',
            //             style: TextStyle(
            //               fontSize: 22,
            //               color: Color.fromARGB(255, 255, 255, 255),
            //               // fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            //   // SizedBox(
            //   //   height: 20,
            //   // ),
            //   // Row(
            //   //   children: [
            //   //     SizedBox(
            //   //       width: 20,
            //   //     ),
            //   //     GestureDetector(
            //   //       behavior: HitTestBehavior.translucent,
            //   //       onTap: () {
            //   //         Navigator.push(
            //   //             context,
            //   //             MaterialPageRoute(
            //   //                 builder: (context) => eventwindow8()));
            //   //       },
            //   //       child: AbsorbPointer(
            //   //         //     child: Container(
            //   //         //   // height: 100,
            //   //         //   width: 200,
            //   //         //   child: Image.asset(
            //   //         //     "images/IMG-20221021-WA0018.jpg",
            //   //         //   ),
            //   //         // )),
            //   //         child: ClipRRect(
            //   //           borderRadius: BorderRadius.circular(
            //   //               MediaQuery.of(context).size.width * 0.05),
            //   //           child: Stack(
            //   //             children: [
            //   //               // precacheImage(AssetImage(image), context,);
            //   //               SizedBox(
            //   //                 // width: MediaQuery.of(context).size.width * 0.78,
            //   //                 width: 200,
            //   //                 height:
            //   //                     MediaQuery.of(context).size.height * 0.248,
            //   //                 child: Image.asset(
            //   //                   "images/IMG-20221021-WA0018.jpg",
            //   //                   // fit: BoxFit.contain,
            //   //                   fit: BoxFit.cover,

            //   //                   // fit: BoxFit.fill,
            //   //                   // fit: BoxFit.fitHeight,
            //   //                 ),
            //   //               ),
            //   //               Container(
            //   //                 decoration: BoxDecoration(
            //   //                   // boxShadow: [
            //   //                   //   BoxShadow(
            //   //                   //     color: Color.fromARGB(255, 100, 179, 252),
            //   //                   //     offset: Offset(0.0, 2.0), //(x,y)
            //   //                   //     blurRadius: 10.0,
            //   //                   //   ),
            //   //                   // ],
            //   //                   gradient: LinearGradient(
            //   //                     begin: Alignment.topLeft,
            //   //                     end: Alignment.bottomRight,
            //   //                     colors: [
            //   //                       Color.fromARGB(255, 5, 5, 5)
            //   //                           .withOpacity(0.85),
            //   //                       Color.fromARGB(255, 100, 100, 100)
            //   //                           .withOpacity(0.1),
            //   //                     ],
            //   //                   ),
            //   //                 ),
            //   //               ),
            //   //               Padding(
            //   //                 padding: EdgeInsets.symmetric(
            //   //                     // horizontal: 15.0,
            //   //                     horizontal:
            //   //                         MediaQuery.of(context).size.width *
            //   //                             0.0375,
            //   //                     // vertical: 10,
            //   //                     vertical: MediaQuery.of(context).size.height *
            //   //                         0.0125),
            //   //                 child: Text.rich(
            //   //                   TextSpan(
            //   //                     style: TextStyle(color: Colors.white),
            //   //                     children: [
            //   //                       TextSpan(
            //   //                         text: "Image Upload\n",
            //   //                         style: TextStyle(
            //   //                           fontSize: 24,
            //   //                           fontWeight: FontWeight.bold,
            //   //                         ),
            //   //                       ),
            //   //                       // TextSpan(text: "$numOfBrands Brands")
            //   //                     ],
            //   //                   ),
            //   //                 ),
            //   //               ),
            //   //             ],
            //   //           ),
            //   //         ),
            //   //       ),
            //   //     ),
            //   //   ],
            //   // )
            //   // Container(child: ,)
            //   SizedBox(
            //     height: 15,
            //   ),
            //   GestureDetector(
            //     behavior: HitTestBehavior.translucent,
            //     onTap: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => eventwindow8()));
            //     },
            //     child: AbsorbPointer(
            //       child: eventcard2(
            //         image: "images/IMG-20221021-WA0018.jpg",
            //         category: "Image Upload",
            //         // numOfBrands: 18,
            //         press: () {},
            //       ),
            //     ),
            //   ),

            //   // GestureDetector(
            //   //   behavior: HitTestBehavior.translucent,
            //   //   onTap: () {
            //   //     Navigator.push(context,
            //   //         MaterialPageRoute(builder: (context) => eventwindow8()));
            //   //   },
            //   //   child: AbsorbPointer(
            //   //     child: eventcard2(
            //   //       image: "images/IMG-20221021-WA0018.jpg",
            //   //       category: "BlithQuiz",
            //   //       // numOfBrands: 18,
            //   //       press: () {},
            //   //     ),
            //   //   ),
            //   // ),
            // ]
          ],
        ));
  }

  void _clear() {
    setState(() {
      _imageFile = null;
    });
  }
}
