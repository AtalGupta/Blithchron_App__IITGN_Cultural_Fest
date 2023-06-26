// import 'dog_slider.dart';
// import 'package:flutter/material.dart';

// import 'main.dart';

// class DogSliderDemo extends StatefulWidget {
//   @override
//   _DogSliderDemoState createState() => _DogSliderDemoState();
// }

// class _DogSliderDemoState extends State<DogSliderDemo> {
//   static const darkGreen = Color(0xff174d4c);

//   TextStyle baseStyle = TextStyle(fontFamily: "Circular", package: App.pkg);

//   int _numTreats = 0;
//   int _maxTreats = 10;
//   double _maxContentWidth = 500;

//   void _handleSliderChanged(double value) {
//     setState(() {
//       _numTreats = ((value * _maxTreats)).round();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       // backgroundColor: Colors.blueAccent[100],
//       // backgroundColor: Colors.black,
//       // backgroundColor: Color.fromARGB(251, 250, 254, 255),
//       // backgroundColor: Color.fromARGB(255, 247, 247, 247),
//       appBar: AppBar(title: Center(child: Text('Blith Store'))),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             Container(
//               // height: 300,
//               height: 800,
//               width: 400,
//               //padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   Container(
//                     // padding: EdgeInsets.all(),
//                     decoration: BoxDecoration(
//                       // color: Colors.blue,
//                       color: Colors.blueGrey,
//                         // border: Border.all(
//                         //   color: Colors.black,
//                         //   // color: Colors.white,
//                         // ),
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     // padding: EdgeInsets.only(
//                     //   top: 150,
//                     //   left: 20,
//                     //   right: 20,
//                     // ),
//                     padding: EdgeInsets.only(
//                       top: 10,
//                       // left: 10,
//                       // right: 10,
//                       bottom: 10,
//                     ),
//                     margin: EdgeInsets.only(
//                       top: 80,
//                       // top: 40,
//                       // left: 20,
//                       left: 30,
//                       // right: 20,
//                       right: 30,
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Our exclusive merchandise and\n         store opens very soon',
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(top: 150),
//                     child: Text(
//                       'Mind playing some fetch in the meantime?',
//                       style: TextStyle(
//                           // color: Colors.white,
//                           ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Stack(
//                       fit: StackFit.expand,
//                       children: <Widget>[
//                         _buildBackground(40),
//                         // _buildTopContent(),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 0.0),
//                           child: Center(
//                             child: DogSlider(
//                               startValue: _numTreats / _maxTreats,
//                               onChanged: _handleSliderChanged,
//                               width: size.width,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   // Center(
//                   //   child: DogSlider(
//                   //     startValue: _numTreats / _maxTreats,
//                   //     onChanged: _handleSliderChanged,
//                   //     width: size.width,
//                   //   ),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.only(top: 175.0),
//                   //   child: Center(
//                   //           child: DogSlider(
//                   //             startValue: _numTreats / _maxTreats,
//                   //             onChanged: _handleSliderChanged,
//                   //             width: size.width,
//                   //           ),
//                   //         ),
//                   // ),
//                 ],
//                 // children: <Widget>[
//                 //   _buildTopNav(),
//                 //   SizedBox(height: 100),
//                 //   Expanded(
//                 //     child: Stack(
//                 //       fit: StackFit.expand,
//                 //       children: <Widget>[
//                 //         _buildBackground(40),
//                 //         _buildTopContent(),
//                 //         Center(
//                 //           child: DogSlider(
//                 //             startValue: _numTreats / _maxTreats,
//                 //             onChanged: _handleSliderChanged,
//                 //             width: size.width,
//                 //           ),
//                 //         ),
//                 //         // _buildBottomContent(),
//                 //       ],
//                 //     ),
//                 //   ),
//                 //   _buildBottomMenu(),
//                 // ],
//               ),
//             ),
//             // Container(
//             //   height: 100,
//             //   width: 400,
//             //   color: Colors.blue,
//             // ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Align _buildBottomContent(){
//   //   double contentFontSize = 13;
//   //   return Align(
//   //     alignment: Alignment.bottomCenter,
//   //     child: Container(height: 100,),
//   //   );
//   // }

//   // Align _buildBottomContent() {
//   //   double contentFontSize = 13;
//   //   return Align(
//   //     alignment: Alignment.bottomCenter,
//   //     child: FractionallySizedBox(
//   //       heightFactor: .5,
//   //       child: Container(
//   //         width: _maxContentWidth,
//   //         padding: EdgeInsets.only(top: 40, bottom: 40, left: 26, right: 26),
//   //         child: Column(
//   //           mainAxisSize: MainAxisSize.min,
//   //           mainAxisAlignment: MainAxisAlignment.center,
//   //           crossAxisAlignment: CrossAxisAlignment.start,
//   //           children: <Widget>[
//   //             Text("PRODUCT DETAIL",
//   //                 style: baseStyle.copyWith(
//   //                     fontSize: 14, fontWeight: FontWeight.w600)),
//   //             SizedBox(height: 12),
//   //             Text("Fetch Tennis Ball - 2.0 inch",
//   //                 style: baseStyle.copyWith(
//   //                     fontSize: contentFontSize, fontWeight: FontWeight.bold)),
//   //             SizedBox(height: 12),
//   //             Text("Colour: Green",
//   //                 style: baseStyle.copyWith(fontSize: contentFontSize)),
//   //             Text("Size: 2.5 inch",
//   //                 style: baseStyle.copyWith(fontSize: contentFontSize)),
//   //             SizedBox(height: 12),
//   //             Text(
//   //                 "For stimulating playtime that encouages pets to leap and chase. Made from a high-quality natural latex and designed for the game of fetch. ",
//   //                 style: baseStyle.copyWith(fontSize: contentFontSize)),
//   //           ],
//   //         ),
//   //       ),
//   //     ),
//   //   );
//   // }

//   Container _buildTopContent() {
//     return Container(
//       width: 400,
//       padding: EdgeInsets.symmetric(horizontal: 32),
//       child: Column(
//         children: <Widget>[
//           Text("How many fetch balls\ndoes your dog want?",
//               textAlign: TextAlign.center,
//               style: baseStyle.copyWith(
//                   fontSize: 26, fontWeight: FontWeight.w300)),
//           SizedBox(
//             height: 24,
//           ),
//           Text(_numTreats.toString(),
//               textAlign: TextAlign.center,
//               style: baseStyle.copyWith(
//                   fontSize: 48,
//                   color: Color(0xff00a6a4),
//                   fontWeight: FontWeight.w600))
//         ],
//       ),
//     );
//   }

//   Container _buildBottomMenu() {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 22),
//       height: 100,
//       width: double.infinity,
//       decoration: BoxDecoration(color: Colors.white, boxShadow: [
//         BoxShadow(color: Colors.black.withOpacity(.1), blurRadius: 20)
//       ]),
//       child: Center(
//         child: Container(
//           width: _maxContentWidth,
//           child: Row(
//             children: <Widget>[
//               Text("TOTAL", style: baseStyle.copyWith(fontSize: 16)),
//               SizedBox(
//                 width: 6,
//               ),
//               Text("\$${_numTreats * 6} CAD",
//                   style: baseStyle.copyWith(
//                       fontSize: 16, fontWeight: FontWeight.bold)),
//               Expanded(
//                 child: SizedBox(),
//               ),
//               // _buildAddToCartBtn()
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // FlatButton _buildAddToCartBtn() {
//   //   return FlatButton(
//   //     color: Color(0xff2cb5b5),
//   //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//   //     padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//   //     child: Text("ADD TO CART", style: baseStyle.copyWith(fontSize: 16, color: Colors.white)),
//   //     onPressed: () {},
//   //   );
//   // }

//   Widget _buildTopNav() {
//     return Container(
//       padding: EdgeInsets.all(12),
//       //color: Colors.green,
//       child: Row(
//         children: <Widget>[
//           IconButton(
//               icon: Icon(
//                 Icons.keyboard_backspace,
//                 color: darkGreen,
//               ),
//               iconSize: 32,
//               onPressed: () {}),
//           Expanded(
//             child: Container(
//               child: Image.asset("images/logo.png",
//                   fit: BoxFit.fitHeight, height: 26, package: App.pkg),
//             ),
//           ),
//           IconButton(
//               icon: Icon(
//                 Icons.shopping_basket,
//                 color: darkGreen,
//               ),
//               iconSize: 32,
//               onPressed: () {}),
//         ],
//       ),
//     );
//   }

//   Widget _buildBackground(double topPadding) {
//     double topFraction = .5;
//     return Padding(
//       padding: EdgeInsets.only(top: topPadding),
//       child: Stack(
//         children: <Widget>[
//           FractionallySizedBox(
//             heightFactor: topFraction,
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: Image.asset("images/background.png",
//                   height: 150, fit: BoxFit.fitHeight, package: App.pkg),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: FractionallySizedBox(
//               heightFactor: 0.5,
//               child: Align(
//                 alignment: Alignment(0, -.8),
//                 child: Image.asset("images/ground.png",
//                     fit: BoxFit.fitHeight, height: 80, package: App.pkg),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
