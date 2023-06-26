// import 'package:bottom_navigation_bar/Events_Page/main.dart';
// import 'package:bottom_navigation_bar/Home_Page/homepage.dart';
// import 'package:bottom_navigation_bar/Spalsh_Screen/LoginPage.dart';
// import 'package:bottom_navigation_bar/User_Profile_Page/ok.dart';
// import 'package:bottom_navigation_bar/o/a.dart';
// // import 'package:day9_party/LoginPage.dart';
// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';

// import '../auth/log.dart';
// import '../bee.dart';

// void main() =>
//     runApp(MaterialApp(debugShowCheckedModeBanner: false, home: xx()));

// class xx extends StatefulWidget {
//   @override
//   _xxState createState() => _xxState();
// }

// class _xxState extends State<xx> with SingleTickerProviderStateMixin {
//   late AnimationController _scaleController;
//   late Animation<double> _scaleAnimation;

//   bool hide = false;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     _scaleController =
//         AnimationController(vsync: this, duration: Duration(milliseconds: 300));

//     _scaleAnimation =
//         Tween<double>(begin: 1.0, end: 30.0).animate(_scaleController)
//           ..addStatusListener((status) {
//             if (status == AnimationStatus.completed) {
//               Navigator.push(
//                   context,
//                   PageTransition(
//                       child: LoginPage(), type: PageTransitionType.fade));
//             }
//           });
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();

//     _scaleController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('images/boape.gif'), fit: BoxFit.cover)),
//         child: Container(
//           padding: EdgeInsets.all(30),
//           decoration: BoxDecoration(
//               gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
//             Colors.black.withOpacity(.9),
//             Colors.black.withOpacity(.6),
//             Colors.black.withOpacity(.8),
//             Colors.black.withOpacity(.3),
//           ])),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               FadeAnimation(
//                   1,
//                   Text(
//                     "Get ready to embark on the best adventure of your life.",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                         height: 1.1),
//                   )),
//               SizedBox(
//                 height: 30,
//               ),
//               FadeAnimation(
//                   1.2,
//                   Text(
//                     "You are abot to step foot into the BlithVerse",
//                     style: TextStyle(
//                         color: Colors.white.withOpacity(.7),
//                         fontSize: 25,
//                         fontWeight: FontWeight.w100),
//                   )),
//               SizedBox(
//                 height: 150,
//               ),
//               FadeAnimation(
//                   1.4,
//                   InkWell(
//                     onTap: () {
//                       // setState(() {
//                       //   hide = true;
//                       // });
//                       // _scaleController.forward();
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => LoginPage(),
//                         ),
//                       );
//                     },
//                     child: AnimatedBuilder(
//                         animation: _scaleController,
//                         builder: (context, child) => Transform.scale(
//                               scale: _scaleAnimation.value,
//                               child: Container(
//                                 height: 60,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(50),
//                                     color: Colors.yellow[700]),
//                                 child: hide == false
//                                     ? Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceAround,
//                                         children: <Widget>[
//                                           Text(
//                                             "BlithchrON!",
//                                             style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 20),
//                                           ),
//                                           Icon(
//                                             Icons.arrow_forward,
//                                             color: Colors.white,
                                          
//                                           )
//                                         ],
//                                       )
//                                     : Container(),
//                               ),
//                             )),
//                   )),
//               SizedBox(
//                 height: 60,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
