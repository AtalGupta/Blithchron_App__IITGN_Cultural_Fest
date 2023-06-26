// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:url_launcher/url_launcher.dart';

// enum SocialMedia { facebook, twitter, email, linkedin, whatsapp, instagram }

// class ourteam extends StatefulWidget {
//   const ourteam({Key? key}) : super(key: key);

//   @override
//   State<ourteam> createState() => _ourteamState();
// }

// class _ourteamState extends State<ourteam> {
//   _launchWhatsapp() async {
//     var whatsapp = "+919714649511";
//     var whatsappAndroid =
//         Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
//     if (await canLaunchUrl(whatsappAndroid)) {
//       await launchUrl(whatsappAndroid);
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("WhatsApp is not installed on the device"),
//         ),
//       );
//     }
//   }

//   Widget buildSocialButtons() => Card(
//         color: Colors.white,
//         elevation: 0,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             buildSocialButton(
//                 icon: FontAwesomeIcons.linkedin,
//                 color: Colors.blue,
//                 onClicked: () => share1(SocialMedia.linkedin)),
//             SizedBox(
//               width: 10,
//             ),
//             buildSocialButton(
//                 icon: FontAwesomeIcons.instagram,
//                 color: Colors.pink,
//                 onClicked: () => share1(SocialMedia.instagram)),
//             SizedBox(
//               width: 10,
//             ),
//             buildSocialButton(
//                 icon: FontAwesomeIcons.whatsapp,
//                 color: Colors.green,
//                 onClicked: () => share1(SocialMedia.whatsapp)),
//             SizedBox(
//               width: 10,
//             ),
//             buildSocialButton(
//               // icon: FontAwesomeIcons.phone,
//               icon: Icons.phone,
//               color: Colors.black,
//               onClicked: () async {
//                 var whatsapp1 = "+919714649511";
//                 launch('tel://$whatsapp1');
//               },
//             ),
//           ],
//         ),
//       );

//   Widget buildSocialButtons2() => Card(
//         color: Colors.white,
//         elevation: 0,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             buildSocialButton(
//                 icon: FontAwesomeIcons.linkedin,
//                 color: Colors.blue,
//                 onClicked: () => share2(SocialMedia.linkedin)),
//             SizedBox(
//               width: 10,
//             ),
//             buildSocialButton(
//                 icon: FontAwesomeIcons.instagram,
//                 color: Colors.pink,
//                 onClicked: () => share2(SocialMedia.instagram)),
//             SizedBox(
//               width: 10,
//             ),
//             buildSocialButton(
//                 icon: FontAwesomeIcons.whatsapp,
//                 color: Colors.green,
//                 onClicked: () => share2(SocialMedia.whatsapp)),
//             SizedBox(
//               width: 10,
//             ),
//             buildSocialButton(
//               // icon: FontAwesomeIcons.phone,
//               icon: Icons.phone,
//               color: Colors.black,
//               onClicked: () async {
//                 var whatsapp1 = "+918077261776";
//                 launch('tel://$whatsapp1');
//               },
//             ),
//           ],
//         ),
//       );

//   // backgroundColor: Color.fromARGB(255, 221, 221, 221),

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Our Team'),
//         backgroundColor: Colors.blue,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               // padding: const EdgeInsets.only(left:8.0, top: 8),
//               padding: const EdgeInsets.only(top: 8),
//               child: Container(
//                 // padding: EdgeInsets.only(left: 15, top: 6),
//                 height: 60,
//                 // width: 400,
//                 // width: 365,
//                 width: 380,
//                 decoration: BoxDecoration(
//                   // color: Colors.pink,
//                   color: Color.fromARGB(255, 235, 39, 39),
//                   // borderRadius: BorderRadius.circular(20),
//                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topRight: Radius.circular(20))
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Events',
//                     style: TextStyle(fontSize: 30, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             // Padding(
//             //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/new1.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Ayush Modi',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Frontend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 25,
//             //             ),
//             //             buildSocialButtons(),
//             //             // Icon(FontAwesomeIcons.facebook),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),
//             //A//

//             Padding(
//             // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             padding: EdgeInsets.only(
//               // top: 15.0,
//               top: MediaQuery.of(context).size.height * 0.01875,
//               right: MediaQuery.of(context).size.width * 0.025,
//             ),
//             child: Container(
//               height: 130,
//               padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width * 0.05,
//                   top: MediaQuery.of(context).size.height * 0.0125,
//                   bottom: MediaQuery.of(context).size.height * 0.0125),
//               // width: 400,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color.fromARGB(255, 186, 222, 255),
//                     offset: Offset(0.0, 2.0), //(x,y)
//                     blurRadius: MediaQuery.of(context).size.width * 0.025,
//                   )
//                 ],
//                 color: Color.fromARGB(255, 247, 252, 255),
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025),
//                     bottomRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025)),
//               ),
//               // child: Center(
//               //   child: Row(
//               //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //     children: [
//               //       // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
//               //       Image.asset(
//               //         // 'images/65image1666138096723-01-01.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-022.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
//               //         'images/IMG_20221024_192251-011.jpeg.jpg',
//               //         // height: 125,
//               //         height: MediaQuery.of(context).size.height * 0.155,
//               //         // width: 125,
//               //         width: MediaQuery.of(context).size.width * 0.325,
//               //       ),
//               //       // Image.asset(
//               //       //   'images/11IMG-20220212-WA0024.jpg',
//               //       //   // height: 125,
//               //       //   height: MediaQuery.of(context).size.height * 0.155,
//               //       //   // width: 125,
//               //       //   width: MediaQuery.of(context).size.width * 0.325,
//               //       // ),
//               //       // Image.asset(
//               //       //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
//               //       //   // height: 125,
//               //       //   height: MediaQuery.of(context).size.height * 0.155,
//               //       //   // width: 125,
//               //       //   width: MediaQuery.of(context).size.width * 0.325,
//               //       // ),

//               //       Padding(
//               //         padding: EdgeInsets.only(
//               //             left: MediaQuery.of(context).size.width * 0.02),
//               //         child: Column(
//               //           crossAxisAlignment: CrossAxisAlignment.start,
//               //           children: [
//               //             Text(
//               //               'Ayush Modi',
//               //               style: TextStyle(
//               //                 fontSize: 21,
//               //               ),
//               //             ),
//               //             Text(
//               //               'Frontend',
//               //               style: TextStyle(
//               //                 fontSize: 17,
//               //                 color: Color.fromARGB(255, 111, 111, 111),
//               //               ),
//               //             ),

//               //             Container(
//               //               // width: 130,
//               //               width: MediaQuery.of(context).size.width * 0.325,
//               //               child: Divider(
//               //                 color: Colors.grey,
//               //                 thickness: 2.0,
//               //               ),
//               //             ),
//               //             // Divider(
//               //             //   color: Colors.black,
//               //             // ),
//               //             SizedBox(
//               //               // height: 15,
//               //               height:
//               //                   MediaQuery.of(context).size.height * 0.01875,
//               //             ),
//               //             // TextButton(
//               //             //   child: Text('YO'),
//               //             //   onPressed: () {
//               //             //     _launchWhatsapp();
//               //             //   },
//               //             // ),
//               //             buildSocialButtons(),
//               //             // Icon(FontAwesomeIcons.facebook),
//               //           ],
//               //         ),
//               //       )
//               //     ],
//               //   ),
//               // ),
//             ),
//           ),

//             //

//             // Padding(
//             //   padding: const EdgeInsets.only(top: 20, left: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Atal Gupta',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Backend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 20,
//             //             ),
//             //             buildSocialButtons2(),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),

//             //AA//

//             Padding(
//             // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             padding: EdgeInsets.only(
//               top: MediaQuery.of(context).size.height * 0.01875,
//               right: MediaQuery.of(context).size.width * 0.025,
//             ),
//             child: Container(
//               height: 130,
//               padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width * 0.05,
//                   top: MediaQuery.of(context).size.height * 0.0125,
//                   bottom: MediaQuery.of(context).size.height * 0.0125),
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color.fromARGB(255, 186, 222, 255),
//                     offset: Offset(0.0, 2.0), //(x,y)
//                     blurRadius: 10.0,
//                   )
//                 ],
//                 color: Color.fromARGB(255, 247, 252, 255),
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025),
//                     bottomRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025)),
//               ),
//               // child: Center(
//               //   child: Row(
//               //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //     children: [
//               //       // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
//               //       Image.asset(
//               //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
//               //         height: MediaQuery.of(context).size.height * 0.155,
//               //         // width: 125,
//               //         width: MediaQuery.of(context).size.width * 0.325,
//               //       ),

//               //       Padding(
//               //         padding: EdgeInsets.only(
//               //             left: MediaQuery.of(context).size.width * 0.02),
//               //         child: Column(
//               //           crossAxisAlignment: CrossAxisAlignment.start,
//               //           children: [
//               //             Text(
//               //               'Atal Gupta',
//               //               style: TextStyle(
//               //                 fontSize: 21,
//               //               ),
//               //             ),
//               //             Text(
//               //               'Backend',
//               //               style: TextStyle(
//               //                 fontSize: 17,
//               //                 color: Color.fromARGB(255, 111, 111, 111),
//               //               ),
//               //             ),
//               //             // VerticalDivider(
//               //             //     thickness: 3,
//               //             //     width: 4,
//               //             //     indent: 0,
//               //             //     color:  Colors.black,
//               //             //   ),
//               //             Container(
//               //               width: MediaQuery.of(context).size.width * 0.325,
//               //               child: Divider(
//               //                 color: Colors.grey,
//               //                 thickness: 2.0,
//               //               ),
//               //             ),
//               //             // Container(
//               //             //   decoration: BoxDecoration(
//               //             //     border: Border(
//               //             //       bottom: BorderSide(
//               //             //           color: Colors.black, width: 10.0),
//               //             //     ),
//               //             //   ),
//               //             // ),
//               //             // Container(
//               //             //   decoration: new BoxDecoration(
//               //             //     border: Border(
//               //             //       top: BorderSide(width: 1.0, color: Colors.black),
//               //             //       left:
//               //             //           BorderSide(width: 1.0, color: Colors.grey),
//               //             //       right:
//               //             //           BorderSide(width: 1.0, color: Colors.grey),
//               //             //       bottom:
//               //             //           BorderSide(width: 1.0, color: Colors.grey),
//               //             //     ),
//               //             //   ),
//               //             // ),
//               //             // Container(
//               //             //   width: double.infinity,
//               //             //   height: 2, // Thickness
//               //             //   color: Colors.black,
//               //             // ),
//               //             // SizedBox(
//               //             //   height: 50,
//               //             //   child: Divider(
//               //             //     thickness: 3,
//               //             //     width: 4,
//               //             //     indent: 0,
//               //             //     color:  Colors.black,
//               //             //   ),
//               //             // ),
//               //             SizedBox(
//               //               height:
//               //                   MediaQuery.of(context).size.height * 0.01875,
//               //             ),
//               //             // TextButton(
//               //             //   child: Text('YO'),
//               //             //   onPressed: () {
//               //             //     _launchWhatsapp();
//               //             //   },
//               //             // ),
//               //             buildSocialButtons(),
//               //             // Icon(FontAwesomeIcons.facebook),
//               //           ],
//               //         ),
//               //       )
//               //     ],
//               //   ),
//               // ),
//             ),
//           ),

//             SizedBox(
//               // height: 20,
//               height: 10,
//             ),

//             //

//             //

//             //

//             Padding(
//               // padding: const EdgeInsets.only(left:8.0, top: 8),
//               padding: const EdgeInsets.only(top: 8),
//               child: Container(
//                 // padding: EdgeInsets.only(left: 15, top: 6),
//                 height: 60,
//                 // width: 400,
//                 // width: 365,
//                 width: 380,
//                 decoration: BoxDecoration(
//                   color: Colors.indigo,
//                   // borderRadius: BorderRadius.circular(20),
//                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topRight: Radius.circular(20))
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Sponsorship',
//                     style: TextStyle(fontSize: 30, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             // Padding(
//             //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/new1.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Ayush Modi',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Frontend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 25,
//             //             ),
//             //             buildSocialButtons(),
//             //             // Icon(FontAwesomeIcons.facebook),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),
//             //A//

//             Padding(
//             // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             padding: EdgeInsets.only(
//               // top: 15.0,
//               top: MediaQuery.of(context).size.height * 0.01875,
//               right: MediaQuery.of(context).size.width * 0.025,
//             ),
//             child: Container(
//               height: 130,
//               padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width * 0.05,
//                   top: MediaQuery.of(context).size.height * 0.0125,
//                   bottom: MediaQuery.of(context).size.height * 0.0125),
//               // width: 400,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color.fromARGB(255, 186, 222, 255),
//                     offset: Offset(0.0, 2.0), //(x,y)
//                     blurRadius: MediaQuery.of(context).size.width * 0.025,
//                   )
//                 ],
//                 color: Color.fromARGB(255, 247, 252, 255),
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025),
//                     bottomRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025)),
//               ),
//               // child: Center(
//               //   child: Row(
//               //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //     children: [
//               //       // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
//               //       Image.asset(
//               //         // 'images/65image1666138096723-01-01.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-022.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
//               //         'images/IMG_20221024_192251-011.jpeg.jpg',
//               //         // height: 125,
//               //         height: MediaQuery.of(context).size.height * 0.155,
//               //         // width: 125,
//               //         width: MediaQuery.of(context).size.width * 0.325,
//               //       ),
//               //       // Image.asset(
//               //       //   'images/11IMG-20220212-WA0024.jpg',
//               //       //   // height: 125,
//               //       //   height: MediaQuery.of(context).size.height * 0.155,
//               //       //   // width: 125,
//               //       //   width: MediaQuery.of(context).size.width * 0.325,
//               //       // ),
//               //       // Image.asset(
//               //       //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
//               //       //   // height: 125,
//               //       //   height: MediaQuery.of(context).size.height * 0.155,
//               //       //   // width: 125,
//               //       //   width: MediaQuery.of(context).size.width * 0.325,
//               //       // ),

//               //       Padding(
//               //         padding: EdgeInsets.only(
//               //             left: MediaQuery.of(context).size.width * 0.02),
//               //         child: Column(
//               //           crossAxisAlignment: CrossAxisAlignment.start,
//               //           children: [
//               //             Text(
//               //               'Ayush Modi',
//               //               style: TextStyle(
//               //                 fontSize: 21,
//               //               ),
//               //             ),
//               //             Text(
//               //               'Frontend',
//               //               style: TextStyle(
//               //                 fontSize: 17,
//               //                 color: Color.fromARGB(255, 111, 111, 111),
//               //               ),
//               //             ),

//               //             Container(
//               //               // width: 130,
//               //               width: MediaQuery.of(context).size.width * 0.325,
//               //               child: Divider(
//               //                 color: Colors.grey,
//               //                 thickness: 2.0,
//               //               ),
//               //             ),
//               //             // Divider(
//               //             //   color: Colors.black,
//               //             // ),
//               //             SizedBox(
//               //               // height: 15,
//               //               height:
//               //                   MediaQuery.of(context).size.height * 0.01875,
//               //             ),
//               //             // TextButton(
//               //             //   child: Text('YO'),
//               //             //   onPressed: () {
//               //             //     _launchWhatsapp();
//               //             //   },
//               //             // ),
//               //             buildSocialButtons(),
//               //             // Icon(FontAwesomeIcons.facebook),
//               //           ],
//               //         ),
//               //       )
//               //     ],
//               //   ),
//               // ),
//             ),
//           ),

//             //

//             // Padding(
//             //   padding: const EdgeInsets.only(top: 20, left: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Atal Gupta',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Backend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 20,
//             //             ),
//             //             buildSocialButtons2(),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),

//             //AA//

//             Padding(
//             // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             padding: EdgeInsets.only(
//               top: MediaQuery.of(context).size.height * 0.01875,
//               right: MediaQuery.of(context).size.width * 0.025,
//             ),
//             child: Container(
//               height: 130,
//               padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width * 0.05,
//                   top: MediaQuery.of(context).size.height * 0.0125,
//                   bottom: MediaQuery.of(context).size.height * 0.0125),
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color.fromARGB(255, 186, 222, 255),
//                     offset: Offset(0.0, 2.0), //(x,y)
//                     blurRadius: 10.0,
//                   )
//                 ],
//                 color: Color.fromARGB(255, 247, 252, 255),
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025),
//                     bottomRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025)),
//               ),
//               // child: Center(
//               //   child: Row(
//               //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //     children: [
//               //       // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
//               //       Image.asset(
//               //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
//               //         height: MediaQuery.of(context).size.height * 0.155,
//               //         // width: 125,
//               //         width: MediaQuery.of(context).size.width * 0.325,
//               //       ),

//               //       Padding(
//               //         padding: EdgeInsets.only(
//               //             left: MediaQuery.of(context).size.width * 0.02),
//               //         child: Column(
//               //           crossAxisAlignment: CrossAxisAlignment.start,
//               //           children: [
//               //             Text(
//               //               'Atal Gupta',
//               //               style: TextStyle(
//               //                 fontSize: 21,
//               //               ),
//               //             ),
//               //             Text(
//               //               'Backend',
//               //               style: TextStyle(
//               //                 fontSize: 17,
//               //                 color: Color.fromARGB(255, 111, 111, 111),
//               //               ),
//               //             ),
//               //             // VerticalDivider(
//               //             //     thickness: 3,
//               //             //     width: 4,
//               //             //     indent: 0,
//               //             //     color:  Colors.black,
//               //             //   ),
//               //             Container(
//               //               width: MediaQuery.of(context).size.width * 0.325,
//               //               child: Divider(
//               //                 color: Colors.grey,
//               //                 thickness: 2.0,
//               //               ),
//               //             ),
//               //             // Container(
//               //             //   decoration: BoxDecoration(
//               //             //     border: Border(
//               //             //       bottom: BorderSide(
//               //             //           color: Colors.black, width: 10.0),
//               //             //     ),
//               //             //   ),
//               //             // ),
//               //             // Container(
//               //             //   decoration: new BoxDecoration(
//               //             //     border: Border(
//               //             //       top: BorderSide(width: 1.0, color: Colors.black),
//               //             //       left:
//               //             //           BorderSide(width: 1.0, color: Colors.grey),
//               //             //       right:
//               //             //           BorderSide(width: 1.0, color: Colors.grey),
//               //             //       bottom:
//               //             //           BorderSide(width: 1.0, color: Colors.grey),
//               //             //     ),
//               //             //   ),
//               //             // ),
//               //             // Container(
//               //             //   width: double.infinity,
//               //             //   height: 2, // Thickness
//               //             //   color: Colors.black,
//               //             // ),
//               //             // SizedBox(
//               //             //   height: 50,
//               //             //   child: Divider(
//               //             //     thickness: 3,
//               //             //     width: 4,
//               //             //     indent: 0,
//               //             //     color:  Colors.black,
//               //             //   ),
//               //             // ),
//               //             SizedBox(
//               //               height:
//               //                   MediaQuery.of(context).size.height * 0.01875,
//               //             ),
//               //             // TextButton(
//               //             //   child: Text('YO'),
//               //             //   onPressed: () {
//               //             //     _launchWhatsapp();
//               //             //   },
//               //             // ),
//               //             buildSocialButtons(),
//               //             // Icon(FontAwesomeIcons.facebook),
//               //           ],
//               //         ),
//               //       )
//               //     ],
//               //   ),
//               // ),
//             ),
//           ),

//             SizedBox(
//               height: 10,
//             ),

//             //BB//

//             Padding(
//               // padding: const EdgeInsets.only(left:8.0, top: 8),
//               padding: const EdgeInsets.only(top: 8),
//               child: Container(
//                 // padding: EdgeInsets.only(left: 15, top: 6),
//                 height: 60,
//                 // width: 400,
//                 // width: 365,
//                 width: 380,
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                   // borderRadius: BorderRadius.circular(20),
//                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topRight: Radius.circular(20))
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Marketing',
//                     style: TextStyle(fontSize: 30, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             // Padding(
//             //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/new1.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Ayush Modi',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Frontend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 25,
//             //             ),
//             //             buildSocialButtons(),
//             //             // Icon(FontAwesomeIcons.facebook),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),
//             //A//

//             Padding(
//             // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             padding: EdgeInsets.only(
//               // top: 15.0,
//               top: MediaQuery.of(context).size.height * 0.01875,
//               right: MediaQuery.of(context).size.width * 0.025,
//             ),
//             child: Container(
//               height: 130,
//               padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width * 0.05,
//                   top: MediaQuery.of(context).size.height * 0.0125,
//                   bottom: MediaQuery.of(context).size.height * 0.0125),
//               // width: 400,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color.fromARGB(255, 186, 222, 255),
//                     offset: Offset(0.0, 2.0), //(x,y)
//                     blurRadius: MediaQuery.of(context).size.width * 0.025,
//                   )
//                 ],
//                 color: Color.fromARGB(255, 247, 252, 255),
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025),
//                     bottomRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025)),
//               ),
//               // child: Center(
//               //   child: Row(
//               //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //     children: [
//               //       // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
//               //       Image.asset(
//               //         // 'images/65image1666138096723-01-01.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-022.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
//               //         'images/IMG_20221024_192251-011.jpeg.jpg',
//               //         // height: 125,
//               //         height: MediaQuery.of(context).size.height * 0.155,
//               //         // width: 125,
//               //         width: MediaQuery.of(context).size.width * 0.325,
//               //       ),
//               //       // Image.asset(
//               //       //   'images/11IMG-20220212-WA0024.jpg',
//               //       //   // height: 125,
//               //       //   height: MediaQuery.of(context).size.height * 0.155,
//               //       //   // width: 125,
//               //       //   width: MediaQuery.of(context).size.width * 0.325,
//               //       // ),
//               //       // Image.asset(
//               //       //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
//               //       //   // height: 125,
//               //       //   height: MediaQuery.of(context).size.height * 0.155,
//               //       //   // width: 125,
//               //       //   width: MediaQuery.of(context).size.width * 0.325,
//               //       // ),

//               //       Padding(
//               //         padding: EdgeInsets.only(
//               //             left: MediaQuery.of(context).size.width * 0.02),
//               //         child: Column(
//               //           crossAxisAlignment: CrossAxisAlignment.start,
//               //           children: [
//               //             Text(
//               //               'Ayush Modi',
//               //               style: TextStyle(
//               //                 fontSize: 21,
//               //               ),
//               //             ),
//               //             Text(
//               //               'Frontend',
//               //               style: TextStyle(
//               //                 fontSize: 17,
//               //                 color: Color.fromARGB(255, 111, 111, 111),
//               //               ),
//               //             ),

//               //             Container(
//               //               // width: 130,
//               //               width: MediaQuery.of(context).size.width * 0.325,
//               //               child: Divider(
//               //                 color: Colors.grey,
//               //                 thickness: 2.0,
//               //               ),
//               //             ),
//               //             // Divider(
//               //             //   color: Colors.black,
//               //             // ),
//               //             SizedBox(
//               //               // height: 15,
//               //               height:
//               //                   MediaQuery.of(context).size.height * 0.01875,
//               //             ),
//               //             // TextButton(
//               //             //   child: Text('YO'),
//               //             //   onPressed: () {
//               //             //     _launchWhatsapp();
//               //             //   },
//               //             // ),
//               //             buildSocialButtons(),
//               //             // Icon(FontAwesomeIcons.facebook),
//               //           ],
//               //         ),
//               //       )
//               //     ],
//               //   ),
//               // ),
//             ),
//           ),

//             //

//             // Padding(
//             //   padding: const EdgeInsets.only(top: 20, left: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Atal Gupta',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Backend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 20,
//             //             ),
//             //             buildSocialButtons2(),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),

//             //AA//

//             Padding(
//             // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             padding: EdgeInsets.only(
//               top: MediaQuery.of(context).size.height * 0.01875,
//               right: MediaQuery.of(context).size.width * 0.025,
//             ),
//             child: Container(
//               height: 130,
//               padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width * 0.05,
//                   top: MediaQuery.of(context).size.height * 0.0125,
//                   bottom: MediaQuery.of(context).size.height * 0.0125),
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color.fromARGB(255, 186, 222, 255),
//                     offset: Offset(0.0, 2.0), //(x,y)
//                     blurRadius: 10.0,
//                   )
//                 ],
//                 color: Color.fromARGB(255, 247, 252, 255),
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025),
//                     bottomRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025)),
//               ),
//               // child: Center(
//               //   child: Row(
//               //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //     children: [
//               //       // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
//               //       Image.asset(
//               //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
//               //         height: MediaQuery.of(context).size.height * 0.155,
//               //         // width: 125,
//               //         width: MediaQuery.of(context).size.width * 0.325,
//               //       ),

//               //       Padding(
//               //         padding: EdgeInsets.only(
//               //             left: MediaQuery.of(context).size.width * 0.02),
//               //         child: Column(
//               //           crossAxisAlignment: CrossAxisAlignment.start,
//               //           children: [
//               //             Text(
//               //               'Atal Gupta',
//               //               style: TextStyle(
//               //                 fontSize: 21,
//               //               ),
//               //             ),
//               //             Text(
//               //               'Backend',
//               //               style: TextStyle(
//               //                 fontSize: 17,
//               //                 color: Color.fromARGB(255, 111, 111, 111),
//               //               ),
//               //             ),
//               //             // VerticalDivider(
//               //             //     thickness: 3,
//               //             //     width: 4,
//               //             //     indent: 0,
//               //             //     color:  Colors.black,
//               //             //   ),
//               //             Container(
//               //               width: MediaQuery.of(context).size.width * 0.325,
//               //               child: Divider(
//               //                 color: Colors.grey,
//               //                 thickness: 2.0,
//               //               ),
//               //             ),
//               //             // Container(
//               //             //   decoration: BoxDecoration(
//               //             //     border: Border(
//               //             //       bottom: BorderSide(
//               //             //           color: Colors.black, width: 10.0),
//               //             //     ),
//               //             //   ),
//               //             // ),
//               //             // Container(
//               //             //   decoration: new BoxDecoration(
//               //             //     border: Border(
//               //             //       top: BorderSide(width: 1.0, color: Colors.black),
//               //             //       left:
//               //             //           BorderSide(width: 1.0, color: Colors.grey),
//               //             //       right:
//               //             //           BorderSide(width: 1.0, color: Colors.grey),
//               //             //       bottom:
//               //             //           BorderSide(width: 1.0, color: Colors.grey),
//               //             //     ),
//               //             //   ),
//               //             // ),
//               //             // Container(
//               //             //   width: double.infinity,
//               //             //   height: 2, // Thickness
//               //             //   color: Colors.black,
//               //             // ),
//               //             // SizedBox(
//               //             //   height: 50,
//               //             //   child: Divider(
//               //             //     thickness: 3,
//               //             //     width: 4,
//               //             //     indent: 0,
//               //             //     color:  Colors.black,
//               //             //   ),
//               //             // ),
//               //             SizedBox(
//               //               height:
//               //                   MediaQuery.of(context).size.height * 0.01875,
//               //             ),
//               //             // TextButton(
//               //             //   child: Text('YO'),
//               //             //   onPressed: () {
//               //             //     _launchWhatsapp();
//               //             //   },
//               //             // ),
//               //             buildSocialButtons(),
//               //             // Icon(FontAwesomeIcons.facebook),
//               //           ],
//               //         ),
//               //       )
//               //     ],
//               //   ),
//               // ),
//             ),
//           ),

//             SizedBox(
//               height: 10,
//             ),

//             //CC//

//             Padding(
//               // padding: const EdgeInsets.only(left:8.0, top: 8),
//               padding: const EdgeInsets.only(top: 8),
//               child: Container(
//                 // padding: EdgeInsets.only(left: 15, top: 6),
//                 height: 60,
//                 // width: 400,
//                 // width: 365,
//                 width: 380,
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 63, 181, 171),
//                   // borderRadius: BorderRadius.circular(20),
//                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), topRight: Radius.circular(20))
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Design',
//                     style: TextStyle(fontSize: 30, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             // Padding(
//             //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/new1.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Ayush Modi',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Frontend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 25,
//             //             ),
//             //             buildSocialButtons(),
//             //             // Icon(FontAwesomeIcons.facebook),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),
//             //A//

//             Padding(
//             // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             padding: EdgeInsets.only(
//               // top: 15.0,
//               top: MediaQuery.of(context).size.height * 0.01875,
//               right: MediaQuery.of(context).size.width * 0.025,
//             ),
//             child: Container(
//               height: 130,
//               padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width * 0.05,
//                   top: MediaQuery.of(context).size.height * 0.0125,
//                   bottom: MediaQuery.of(context).size.height * 0.0125),
//               // width: 400,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color.fromARGB(255, 186, 222, 255),
//                     offset: Offset(0.0, 2.0), //(x,y)
//                     blurRadius: MediaQuery.of(context).size.width * 0.025,
//                   )
//                 ],
//                 color: Color.fromARGB(255, 247, 252, 255),
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025),
//                     bottomRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025)),
//               ),
//               // child: Center(
//               //   child: Row(
//               //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //     children: [
//               //       // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
//               //       Image.asset(
//               //         // 'images/65image1666138096723-01-01.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-022.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
//               //         // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
//               //         'images/IMG_20221024_192251-011.jpeg.jpg',
//               //         // height: 125,
//               //         height: MediaQuery.of(context).size.height * 0.155,
//               //         // width: 125,
//               //         width: MediaQuery.of(context).size.width * 0.325,
//               //       ),
//               //       // Image.asset(
//               //       //   'images/11IMG-20220212-WA0024.jpg',
//               //       //   // height: 125,
//               //       //   height: MediaQuery.of(context).size.height * 0.155,
//               //       //   // width: 125,
//               //       //   width: MediaQuery.of(context).size.width * 0.325,
//               //       // ),
//               //       // Image.asset(
//               //       //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
//               //       //   // height: 125,
//               //       //   height: MediaQuery.of(context).size.height * 0.155,
//               //       //   // width: 125,
//               //       //   width: MediaQuery.of(context).size.width * 0.325,
//               //       // ),

//               //       Padding(
//               //         padding: EdgeInsets.only(
//               //             left: MediaQuery.of(context).size.width * 0.02),
//               //         child: Column(
//               //           crossAxisAlignment: CrossAxisAlignment.start,
//               //           children: [
//               //             Text(
//               //               'Ayush Modi',
//               //               style: TextStyle(
//               //                 fontSize: 21,
//               //               ),
//               //             ),
//               //             Text(
//               //               'Frontend',
//               //               style: TextStyle(
//               //                 fontSize: 17,
//               //                 color: Color.fromARGB(255, 111, 111, 111),
//               //               ),
//               //             ),

//               //             Container(
//               //               // width: 130,
//               //               width: MediaQuery.of(context).size.width * 0.325,
//               //               child: Divider(
//               //                 color: Colors.grey,
//               //                 thickness: 2.0,
//               //               ),
//               //             ),
//               //             // Divider(
//               //             //   color: Colors.black,
//               //             // ),
//               //             SizedBox(
//               //               // height: 15,
//               //               height:
//               //                   MediaQuery.of(context).size.height * 0.01875,
//               //             ),
//               //             // TextButton(
//               //             //   child: Text('YO'),
//               //             //   onPressed: () {
//               //             //     _launchWhatsapp();
//               //             //   },
//               //             // ),
//               //             buildSocialButtons(),
//               //             // Icon(FontAwesomeIcons.facebook),
//               //           ],
//               //         ),
//               //       )
//               //     ],
//               //   ),
//               // ),
//             ),
//           ),

//             //

//             // Padding(
//             //   padding: const EdgeInsets.only(top: 20, left: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Atal Gupta',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Backend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 20,
//             //             ),
//             //             buildSocialButtons2(),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),

//             //AA//

//             Padding(
//             // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             padding: EdgeInsets.only(
//               top: MediaQuery.of(context).size.height * 0.01875,
//               right: MediaQuery.of(context).size.width * 0.025,
//             ),
//             child: Container(
//               height: 130,
//               padding: EdgeInsets.only(
//                   left: MediaQuery.of(context).size.width * 0.05,
//                   top: MediaQuery.of(context).size.height * 0.0125,
//                   bottom: MediaQuery.of(context).size.height * 0.0125),
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color.fromARGB(255, 186, 222, 255),
//                     offset: Offset(0.0, 2.0), //(x,y)
//                     blurRadius: 10.0,
//                   )
//                 ],
//                 color: Color.fromARGB(255, 247, 252, 255),
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025),
//                     bottomRight: Radius.circular(
//                         MediaQuery.of(context).size.width * 0.025)),
//               ),
//               // child: Center(
//               //   child: Row(
//               //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //     children: [
//               //       // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
//               //       Image.asset(
//               //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
//               //         height: MediaQuery.of(context).size.height * 0.155,
//               //         // width: 125,
//               //         width: MediaQuery.of(context).size.width * 0.325,
//               //       ),

//               //       Padding(
//               //         padding: EdgeInsets.only(
//               //             left: MediaQuery.of(context).size.width * 0.02),
//               //         child: Column(
//               //           crossAxisAlignment: CrossAxisAlignment.start,
//               //           children: [
//               //             Text(
//               //               'Atal Gupta',
//               //               style: TextStyle(
//               //                 fontSize: 21,
//               //               ),
//               //             ),
//               //             Text(
//               //               'Backend',
//               //               style: TextStyle(
//               //                 fontSize: 17,
//               //                 color: Color.fromARGB(255, 111, 111, 111),
//               //               ),
//               //             ),
//               //             // VerticalDivider(
//               //             //     thickness: 3,
//               //             //     width: 4,
//               //             //     indent: 0,
//               //             //     color:  Colors.black,
//               //             //   ),
//               //             Container(
//               //               width: MediaQuery.of(context).size.width * 0.325,
//               //               child: Divider(
//               //                 color: Colors.grey,
//               //                 thickness: 2.0,
//               //               ),
//               //             ),
//               //             // Container(
//               //             //   decoration: BoxDecoration(
//               //             //     border: Border(
//               //             //       bottom: BorderSide(
//               //             //           color: Colors.black, width: 10.0),
//               //             //     ),
//               //             //   ),
//               //             // ),
//               //             // Container(
//               //             //   decoration: new BoxDecoration(
//               //             //     border: Border(
//               //             //       top: BorderSide(width: 1.0, color: Colors.black),
//               //             //       left:
//               //             //           BorderSide(width: 1.0, color: Colors.grey),
//               //             //       right:
//               //             //           BorderSide(width: 1.0, color: Colors.grey),
//               //             //       bottom:
//               //             //           BorderSide(width: 1.0, color: Colors.grey),
//               //             //     ),
//               //             //   ),
//               //             // ),
//               //             // Container(
//               //             //   width: double.infinity,
//               //             //   height: 2, // Thickness
//               //             //   color: Colors.black,
//               //             // ),
//               //             // SizedBox(
//               //             //   height: 50,
//               //             //   child: Divider(
//               //             //     thickness: 3,
//               //             //     width: 4,
//               //             //     indent: 0,
//               //             //     color:  Colors.black,
//               //             //   ),
//               //             // ),
//               //             SizedBox(
//               //               height:
//               //                   MediaQuery.of(context).size.height * 0.01875,
//               //             ),
//               //             // TextButton(
//               //             //   child: Text('YO'),
//               //             //   onPressed: () {
//               //             //     _launchWhatsapp();
//               //             //   },
//               //             // ),
//               //             buildSocialButtons(),
//               //             // Icon(FontAwesomeIcons.facebook),
//               //           ],
//               //         ),
//               //       )
//               //     ],
//               //   ),
//               // ),
//             ),
//           ),

//             SizedBox(
//               height: 20,
//             ),

//             // Container(
//             //   padding: EdgeInsets.only(left: 15, top: 12),
//             //   height: 60,
//             //   width: 400,
//             //   decoration: BoxDecoration(color: Colors.indigo),
//             //   child: Text(
//             //     'Sponsorship',
//             //     style: TextStyle(fontSize: 30, color: Colors.white),
//             //   ),
//             // ),
//             // Padding(
//             //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/new1.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Ayush Modi',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Frontend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 25,
//             //             ),
//             //             buildSocialButtons(),
//             //             // Icon(FontAwesomeIcons.facebook),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),

//             // //

//             // Padding(
//             //   padding: const EdgeInsets.only(top: 20, left: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Atal Gupta',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Backend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 20,
//             //             ),
//             //             buildSocialButtons2(),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),

//             // //
//             // //
//             // //

//             // SizedBox(
//             //   height: 20,
//             // ),

//             // //

//             // //

//             // //

//             // Container(
//             //   padding: EdgeInsets.only(left: 15, top: 12),
//             //   height: 60,
//             //   width: 400,
//             //   decoration: BoxDecoration(color: Colors.green),
//             //   child: Text(
//             //     'Marketing',
//             //     style: TextStyle(fontSize: 30, color: Colors.white),
//             //   ),
//             // ),
//             // Padding(
//             //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/new1.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Ayush Modi',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Frontend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 25,
//             //             ),
//             //             buildSocialButtons(),
//             //             // Icon(FontAwesomeIcons.facebook),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),

//             // //

//             // Padding(
//             //   padding: const EdgeInsets.only(top: 20, left: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Atal Gupta',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Backend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 20,
//             //             ),
//             //             buildSocialButtons2(),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),

//             // //

//             // //

//             // //

//             // SizedBox(
//             //   height: 20,
//             // ),

//             // //

//             // //

//             // //

//             // Container(
//             //   padding: EdgeInsets.only(left: 15, top: 12),
//             //   height: 60,
//             //   width: 400,
//             //   decoration: BoxDecoration(color: Colors.yellow),
//             //   child: Text(
//             //     'Design',
//             //     style: TextStyle(fontSize: 30, color: Colors.white),
//             //   ),
//             // ),
//             // Padding(
//             //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
//             //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/new1.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Ayush Modi',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Frontend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 25,
//             //             ),
//             //             buildSocialButtons(),
//             //             // Icon(FontAwesomeIcons.facebook),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),

//             // //

//             // Padding(
//             //   padding: const EdgeInsets.only(top: 20, left: 15),
//             //   child: Row(
//             //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     children: [
//             //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
//             //       Image.asset(
//             //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
//             //         height: 125,
//             //         width: 125,
//             //       ),

//             //       Padding(
//             //         padding: const EdgeInsets.only(left: 8.0),
//             //         child: Column(
//             //           crossAxisAlignment: CrossAxisAlignment.start,
//             //           children: [
//             //             Text(
//             //               'Atal Gupta',
//             //               style: TextStyle(
//             //                 fontSize: 23,
//             //               ),
//             //             ),
//             //             Text(
//             //               'Backend',
//             //               style: TextStyle(
//             //                 fontSize: 17,
//             //                 color: Color.fromARGB(255, 111, 111, 111),
//             //               ),
//             //             ),
//             //             SizedBox(
//             //               height: 20,
//             //             ),
//             //             buildSocialButtons2(),
//             //           ],
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),

//             // //

//             // //

//             // //

//             // //
//             // //
//             // //

//             // SizedBox(
//             //   height: 30,
//             // ),
//             // Padding(
//             //   padding: const EdgeInsets.only(left: 53.0),
//             //   child: Image.asset(
//             //     'images/Mt. B 1.png',
//             //     height: 300,
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget buildSocialButton({
//   required IconData icon,
//   Color? color,
//   required VoidCallback onClicked,
// }) =>
//     InkWell(
//       child: Container(
//         width: 30,
//         height: 30,
//         child: Center(
//             child: FaIcon(
//           icon,
//           color: color,
//           size: 30,
//         )),
//       ),
//       onTap: onClicked,
//     );

// Future share1(SocialMedia socialPlatform) async {
//   final subject = 'Hello';
//   final text = 'My';
//   final urlShare =
//       Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
//   var whatsapp1 = "+919714649511";

//   final urls = {
//     SocialMedia.facebook: 'https://www.facebook.com/',
//     SocialMedia.twitter: 'https://twitter.com/explore',
//     SocialMedia.email:
//         'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
//     SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
//     // SocialMedia.linkedin:
//     //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
//     // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
//     SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp1&text=$subject',
//     SocialMedia.instagram: 'https://www.instagram.com/_ayushmodi/',
//   };

//   final url = urls[socialPlatform]!;

//   if (await canLaunch(url)) {
//     await launch(url);
//   }
// }

// Future share2(SocialMedia socialPlatform) async {
//   final subject = 'Hello';
//   final text = 'My';
//   final urlShare =
//       Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
//   var whatsapp1 = "+918077261776";

//   final urls = {
//     SocialMedia.facebook: 'https://www.facebook.com/',
//     SocialMedia.twitter: 'https://twitter.com/explore',
//     SocialMedia.email:
//         'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
//     SocialMedia.linkedin: 'https://www.linkedin.com/in/atal-gupta-592914243/',
//     // SocialMedia.linkedin:
//     //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
//     // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
//     SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp1&text=$subject',
//     SocialMedia.instagram: 'https://www.instagram.com/atal9149/',
//   };

//   final url = urls[socialPlatform]!;

//   if (await canLaunch(url)) {
//     await launch(url);
//   }
// }

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

enum SocialMedia { facebook, twitter, email, linkedin, whatsapp, instagram }

class ourteam extends StatefulWidget {
  const ourteam({Key? key}) : super(key: key);

  @override
  State<ourteam> createState() => _ourteamState();
}

class _ourteamState extends State<ourteam> {
  _launchWhatsapp() async {
    var whatsapp = "+919714649511";
    var whatsappAndroid =
        Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
    if (await canLaunchUrl(whatsappAndroid)) {
      await launchUrl(whatsappAndroid);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("WhatsApp is not installed on the device"),
        ),
      );
    }
  }

  Widget buildSocialButtons() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // buildSocialButton(
            //     icon: FontAwesomeIcons.linkedin,
            //     color: Colors.blue,
            //     onClicked: () => share1(SocialMedia.linkedin)),
            // SizedBox(
            //   width: 10,
            // ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share1(SocialMedia.instagram)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share1(SocialMedia.whatsapp)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
              // icon: FontAwesomeIcons.phone,
              icon: Icons.phone,
              color: Colors.black,
              onClicked: () async {
                var whatsapp1 = "+918277376320";
                launch('tel://$whatsapp1');
              },
            ),
          ],
        ),
      );

  Widget buildSocialButtons2() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // buildSocialButton(
            //     icon: FontAwesomeIcons.linkedin,
            //     color: Colors.blue,
            //     onClicked: () => share2(SocialMedia.linkedin)),
            // SizedBox(
            //   width: 10,
            // ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share2(SocialMedia.instagram)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share2(SocialMedia.whatsapp)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
              // icon: FontAwesomeIcons.phone,
              icon: Icons.phone,
              color: Colors.black,
              onClicked: () async {
                var whatsapp2 = "+919352334815";
                launch('tel://$whatsapp2');
              },
            ),
          ],
        ),
      );

  Widget buildSocialButtons3() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // buildSocialButton(
            //     icon: FontAwesomeIcons.linkedin,
            //     color: Colors.blue,
            //     onClicked: () => share1(SocialMedia.linkedin)),
            // SizedBox(
            //   width: 10,
            // ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share3(SocialMedia.instagram)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share3(SocialMedia.whatsapp)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
              // icon: FontAwesomeIcons.phone,
              icon: Icons.phone,
              color: Colors.black,
              onClicked: () async {
                var whatsapp3 = "+919660285907";
                launch('tel://$whatsapp3');
              },
            ),
          ],
        ),
      );

  Widget buildSocialButtons4() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // buildSocialButton(
            //     icon: FontAwesomeIcons.linkedin,
            //     color: Colors.blue,
            //     onClicked: () => share1(SocialMedia.linkedin)),
            // SizedBox(
            //   width: 10,
            // ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share4(SocialMedia.instagram)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share4(SocialMedia.whatsapp)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
              // icon: FontAwesomeIcons.phone,
              icon: Icons.phone,
              color: Colors.black,
              onClicked: () async {
                var whatsapp4 = "+918851142209";
                launch('tel://$whatsapp4');
              },
            ),
          ],
        ),
      );

  Widget buildSocialButtons5() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // buildSocialButton(
            //     icon: FontAwesomeIcons.linkedin,
            //     color: Colors.blue,
            //     onClicked: () => share1(SocialMedia.linkedin)),
            // SizedBox(
            //   width: 10,
            // ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share5(SocialMedia.instagram)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share5(SocialMedia.whatsapp)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
              // icon: FontAwesomeIcons.phone,
              icon: Icons.phone,
              color: Colors.black,
              onClicked: () async {
                var whatsapp5 = "+916378010027";
                launch('tel://$whatsapp5');
              },
            ),
          ],
        ),
      );

  Widget buildSocialButtons6() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // buildSocialButton(
            //     icon: FontAwesomeIcons.linkedin,
            //     color: Colors.blue,
            //     onClicked: () => share1(SocialMedia.linkedin)),
            // SizedBox(
            //   width: 10,
            // ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share6(SocialMedia.instagram)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share6(SocialMedia.whatsapp)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
              // icon: FontAwesomeIcons.phone,
              icon: Icons.phone,
              color: Colors.black,
              onClicked: () async {
                var whatsapp6 = "+918239926501";
                launch('tel://$whatsapp6');
              },
            ),
          ],
        ),
      );

  Widget buildSocialButtons7() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // buildSocialButton(
            //     icon: FontAwesomeIcons.linkedin,
            //     color: Colors.blue,
            //     onClicked: () => share1(SocialMedia.linkedin)),
            // SizedBox(
            //   width: 10,
            // ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share7(SocialMedia.instagram)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share7(SocialMedia.whatsapp)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
              // icon: FontAwesomeIcons.phone,
              icon: Icons.phone,
              color: Colors.black,
              onClicked: () async {
                var whatsapp7 = "+919831167164";
                launch('tel://$whatsapp7');
              },
            ),
          ],
        ),
      );

  Widget buildSocialButtons8() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // buildSocialButton(
            //     icon: FontAwesomeIcons.linkedin,
            //     color: Colors.blue,
            //     onClicked: () => share1(SocialMedia.linkedin)),
            // SizedBox(
            //   width: 10,
            // ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share8(SocialMedia.instagram)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share8(SocialMedia.whatsapp)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
              // icon: FontAwesomeIcons.phone,
              icon: Icons.phone,
              color: Colors.black,
              onClicked: () async {
                var whatsapp8 = "+916352847062";
                launch('tel://$whatsapp8');
              },
            ),
          ],
        ),
      );

  Widget buildSocialButtons9() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // buildSocialButton(
            //     icon: FontAwesomeIcons.linkedin,
            //     color: Colors.blue,
            //     onClicked: () => share1(SocialMedia.linkedin)),
            // SizedBox(
            //   width: 10,
            // ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share9(SocialMedia.instagram)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share9(SocialMedia.whatsapp)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
              // icon: FontAwesomeIcons.phone,
              icon: Icons.phone,
              color: Colors.black,
              onClicked: () async {
                var whatsapp9 = "+919462151116";
                launch('tel://$whatsapp9');
              },
            ),
          ],
        ),
      );

  Widget buildSocialButtons10() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // buildSocialButton(
            //     icon: FontAwesomeIcons.linkedin,
            //     color: Colors.blue,
            //     onClicked: () => share1(SocialMedia.linkedin)),
            // SizedBox(
            //   width: 10,
            // ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share10(SocialMedia.instagram)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share10(SocialMedia.whatsapp)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
              // icon: FontAwesomeIcons.phone,
              icon: Icons.phone,
              color: Colors.black,
              onClicked: () async {
                var whatsapp10 = "+919022394621";
                launch('tel://$whatsapp10');
              },
            ),
          ],
        ),
      );

  Widget buildSocialButtons11() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // buildSocialButton(
            //     icon: FontAwesomeIcons.linkedin,
            //     color: Colors.blue,
            //     onClicked: () => share1(SocialMedia.linkedin)),
            // SizedBox(
            //   width: 10,
            // ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share11(SocialMedia.instagram)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share11(SocialMedia.whatsapp)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
              // icon: FontAwesomeIcons.phone,
              icon: Icons.phone,
              color: Colors.black,
              onClicked: () async {
                var whatsapp11 = "+919998223717";
                launch('tel://$whatsapp11');
              },
            ),
          ],
        ),
      );

  Widget buildSocialButtons12() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // buildSocialButton(
            //     icon: FontAwesomeIcons.linkedin,
            //     color: Colors.blue,
            //     onClicked: () => share1(SocialMedia.linkedin)),
            // SizedBox(
            //   width: 10,
            // ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share12(SocialMedia.instagram)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share12(SocialMedia.whatsapp)),
            SizedBox(
              width: 10,
            ),
            buildSocialButton(
              // icon: FontAwesomeIcons.phone,
              icon: Icons.phone,
              color: Colors.black,
              onClicked: () async {
                var whatsapp12 = "+919820737449";
                launch('tel://$whatsapp12');
              },
            ),
          ],
        ),
      );

  // backgroundColor: Color.fromARGB(255, 221, 221, 221),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Team'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              // padding: const EdgeInsets.only(left:8.0, top: 8),
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                // padding: EdgeInsets.only(left: 15, top: 6),
                height: 60,
                // width: 400,
                // width: 365,
                // width: 380,
                width: MediaQuery.of(context).size.width * 0.99,

                decoration: BoxDecoration(
                    // color: Colors.pink,
                    color: Color.fromARGB(255, 235, 39, 39),
                    // borderRadius: BorderRadius.circular(20),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Events',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            // Padding(
            //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
            //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/new1.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Ayush Modi',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Frontend',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 25,
            //             ),
            //             buildSocialButtons(),
            //             // Icon(FontAwesomeIcons.facebook),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            //A//

            Padding(
              // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
              padding: EdgeInsets.only(
                // top: 15.0,
                top: MediaQuery.of(context).size.height * 0.01875,
                right: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Container(
                // height: 130,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.0125,
                    bottom: MediaQuery.of(context).size.height * 0.0125),
                // width: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 222, 255),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: MediaQuery.of(context).size.width * 0.025,
                    )
                  ],
                  color: Color.fromARGB(255, 247, 252, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025)),
                ),
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
                      Image.asset(
                        // 'images/65image1666138096723-01-01.jpeg.jpg',
                        // 'images/IMG_20221024_192251-022.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
                        'images/nakul.jpg',
                        fit: BoxFit.cover,
                        // height: 125,
                        height: MediaQuery.of(context).size.height * 0.155,
                        // width: 125,
                        width: MediaQuery.of(context).size.width * 0.325,
                      ),
                      // Image.asset(
                      //   'images/11IMG-20220212-WA0024.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),
                      // Image.asset(
                      //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nakul Raj',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              'Core',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 111, 111, 111),
                              ),
                            ),

                            Container(
                              // width: 130,
                              width: MediaQuery.of(context).size.width * 0.325,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // ),
                            SizedBox(
                              // height: 15,
                              height:
                                  MediaQuery.of(context).size.height * 0.01875,
                            ),
                            // TextButton(
                            //   child: Text('YO'),
                            //   onPressed: () {
                            //     _launchWhatsapp();
                            //   },
                            // ),
                            buildSocialButtons(),
                            // Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //

            // Padding(
            //   padding: const EdgeInsets.only(top: 20, left: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Atal Gupta',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Backend',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             buildSocialButtons2(),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            //AA//

            Padding(
              // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.01875,
                right: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Container(
                // height: 130,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.0125,
                    bottom: MediaQuery.of(context).size.height * 0.0125),
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 222, 255),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: 10.0,
                    )
                  ],
                  color: Color.fromARGB(255, 247, 252, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025)),
                ),
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
                      Image.asset(
                        // 'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
                        'images/manas.jpg',
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height * 0.155,
                        // width: 125,
                        width: MediaQuery.of(context).size.width * 0.325,
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Manas Kawal',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              'Coordinator',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 111, 111, 111),
                              ),
                            ),
                            // VerticalDivider(
                            //     thickness: 3,
                            //     width: 4,
                            //     indent: 0,
                            //     color:  Colors.black,
                            //   ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.325,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                            ),
                            // Container(
                            //   decoration: BoxDecoration(
                            //     border: Border(
                            //       bottom: BorderSide(
                            //           color: Colors.black, width: 10.0),
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   decoration: new BoxDecoration(
                            //     border: Border(
                            //       top: BorderSide(width: 1.0, color: Colors.black),
                            //       left:
                            //           BorderSide(width: 1.0, color: Colors.grey),
                            //       right:
                            //           BorderSide(width: 1.0, color: Colors.grey),
                            //       bottom:
                            //           BorderSide(width: 1.0, color: Colors.grey),
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   width: double.infinity,
                            //   height: 2, // Thickness
                            //   color: Colors.black,
                            // ),
                            // SizedBox(
                            //   height: 50,
                            //   child: Divider(
                            //     thickness: 3,
                            //     width: 4,
                            //     indent: 0,
                            //     color:  Colors.black,
                            //   ),
                            // ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.01875,
                            ),
                            // TextButton(
                            //   child: Text('YO'),
                            //   onPressed: () {
                            //     _launchWhatsapp();
                            //   },
                            // ),
                            buildSocialButtons2(),
                            // Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            // SizedBox(
            //   // height: 20,
            //   height: 10,
            // ),

            Padding(
              // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.01875,
                right: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Container(
                // height: 130,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.0125,
                    bottom: MediaQuery.of(context).size.height * 0.0125),
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 222, 255),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: 10.0,
                    )
                  ],
                  color: Color.fromARGB(255, 247, 252, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025)),
                ),
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
                      Image.asset(
                        'images/yashbothra.jpg',
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height * 0.155,
                        // width: 125,
                        width: MediaQuery.of(context).size.width * 0.325,
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Yash Bothra',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              'Coordinator',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 111, 111, 111),
                              ),
                            ),
                            // VerticalDivider(
                            //     thickness: 3,
                            //     width: 4,
                            //     indent: 0,
                            //     color:  Colors.black,
                            //   ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.325,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                            ),
                            // Container(
                            //   decoration: BoxDecoration(
                            //     border: Border(
                            //       bottom: BorderSide(
                            //           color: Colors.black, width: 10.0),
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   decoration: new BoxDecoration(
                            //     border: Border(
                            //       top: BorderSide(width: 1.0, color: Colors.black),
                            //       left:
                            //           BorderSide(width: 1.0, color: Colors.grey),
                            //       right:
                            //           BorderSide(width: 1.0, color: Colors.grey),
                            //       bottom:
                            //           BorderSide(width: 1.0, color: Colors.grey),
                            //     ),
                            //   ),
                            // ),
                            // Container(
                            //   width: double.infinity,
                            //   height: 2, // Thickness
                            //   color: Colors.black,
                            // ),
                            // SizedBox(
                            //   height: 50,
                            //   child: Divider(
                            //     thickness: 3,
                            //     width: 4,
                            //     indent: 0,
                            //     color:  Colors.black,
                            //   ),
                            // ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.01875,
                            ),
                            // TextButton(
                            //   child: Text('YO'),
                            //   onPressed: () {
                            //     _launchWhatsapp();
                            //   },
                            // ),
                            buildSocialButtons3(),
                            // Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              // height: 20,
              height: 10,
            ),

            //

            //

            //

            Padding(
              // padding: const EdgeInsets.only(left:8.0, top: 8),
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                // padding: EdgeInsets.only(left: 15, top: 6),
                height: 60,
                // width: 400,
                // width: 365,
                // width: 380,
                width: MediaQuery.of(context).size.width * 0.99,

                decoration: BoxDecoration(
                    color: Colors.indigo,
                    // borderRadius: BorderRadius.circular(20),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Sponsorship',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            // Padding(
            //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
            //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/IMG_20221024_192251-011.jpeg.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Mihir Agrawal',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Core',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 25,
            //             ),
            //             buildSocialButtons(),
            //             // Icon(FontAwesomeIcons.facebook),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            //A//

            Padding(
              // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
              padding: EdgeInsets.only(
                // top: 15.0,
                top: MediaQuery.of(context).size.height * 0.01875,
                right: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Container(
                // height: 130,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.0125,
                    bottom: MediaQuery.of(context).size.height * 0.0125),
                // width: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 222, 255),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: MediaQuery.of(context).size.width * 0.025,
                    )
                  ],
                  color: Color.fromARGB(255, 247, 252, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025)),
                ),
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
                      Image.asset(
                        // 'images/65image1666138096723-01-01.jpeg.jpg',
                        // 'images/IMG_20221024_192251-022.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
                        // 'images/user_icon_150670.webp',
                        'images/Website Image.jpeg',

                        // height: 125,
                        height: MediaQuery.of(context).size.height * 0.155,
                        // width: 125,
                        width: MediaQuery.of(context).size.width * 0.325,
                      ),
                      // Image.asset(
                      //   'images/11IMG-20220212-WA0024.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),
                      // Image.asset(
                      //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mihir Agarwal',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              'Core',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 111, 111, 111),
                              ),
                            ),

                            Container(
                              // width: 130,
                              width: MediaQuery.of(context).size.width * 0.325,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // ),
                            SizedBox(
                              // height: 15,
                              height:
                                  MediaQuery.of(context).size.height * 0.01875,
                            ),
                            // TextButton(
                            //   child: Text('YO'),
                            //   onPressed: () {
                            //     _launchWhatsapp();
                            //   },
                            // ),
                            buildSocialButtons4(),
                            // Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
              padding: EdgeInsets.only(
                // top: 15.0,
                top: MediaQuery.of(context).size.height * 0.01875,
                right: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Container(
                // height: 130,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.0125,
                    bottom: MediaQuery.of(context).size.height * 0.0125),
                // width: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 222, 255),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: MediaQuery.of(context).size.width * 0.025,
                    )
                  ],
                  color: Color.fromARGB(255, 247, 252, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025)),
                ),
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
                      Image.asset(
                        // 'images/65image1666138096723-01-01.jpeg.jpg',
                        // 'images/IMG_20221024_192251-022.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
                        'images/lokesh.jpg',
                        fit: BoxFit.cover,
                        // height: 125,
                        height: MediaQuery.of(context).size.height * 0.155,
                        // width: 125,
                        width: MediaQuery.of(context).size.width * 0.325,
                      ),
                      // Image.asset(
                      //   'images/11IMG-20220212-WA0024.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),
                      // Image.asset(
                      //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokesh Khandewal',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              'Coordinator',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 111, 111, 111),
                              ),
                            ),

                            Container(
                              // width: 130,
                              width: MediaQuery.of(context).size.width * 0.325,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // ),
                            SizedBox(
                              // height: 15,
                              height:
                                  MediaQuery.of(context).size.height * 0.01875,
                            ),
                            // TextButton(
                            //   child: Text('YO'),
                            //   onPressed: () {
                            //     _launchWhatsapp();
                            //   },
                            // ),
                            buildSocialButtons5(),
                            // Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
              padding: EdgeInsets.only(
                // top: 15.0,
                top: MediaQuery.of(context).size.height * 0.01875,
                right: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Container(
                // height: 130,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.0125,
                    bottom: MediaQuery.of(context).size.height * 0.0125),
                // width: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 222, 255),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: MediaQuery.of(context).size.width * 0.025,
                    )
                  ],
                  color: Color.fromARGB(255, 247, 252, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025)),
                ),
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
                      Image.asset(
                        // 'images/65image1666138096723-01-01.jpeg.jpg',
                        // 'images/IMG_20221024_192251-022.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
                        'images/anisha.jpg',
                        fit: BoxFit.cover,
                        // height: 125,
                        height: MediaQuery.of(context).size.height * 0.155,
                        // width: 125,
                        width: MediaQuery.of(context).size.width * 0.325,
                      ),
                      // Image.asset(
                      //   'images/11IMG-20220212-WA0024.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),
                      // Image.asset(
                      //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Anisha Gattani',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              'Coordinator',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 111, 111, 111),
                              ),
                            ),

                            Container(
                              // width: 130,
                              width: MediaQuery.of(context).size.width * 0.325,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // ),
                            SizedBox(
                              // height: 15,
                              height:
                                  MediaQuery.of(context).size.height * 0.01875,
                            ),
                            // TextButton(
                            //   child: Text('YO'),
                            //   onPressed: () {
                            //     _launchWhatsapp();
                            //   },
                            // ),
                            buildSocialButtons6(),
                            // Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //

            // Padding(
            //   padding: const EdgeInsets.only(top: 20, left: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Anisha Gattani',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Coordinator',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             buildSocialButtons2(),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            //AA//

            //   Padding(
            //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
            //   padding: EdgeInsets.only(
            //     top: MediaQuery.of(context).size.height * 0.01875,
            //     right: MediaQuery.of(context).size.width * 0.025,
            //   ),
            //   child: Container(
            //     // height: 130,
            //     padding: EdgeInsets.only(
            //         left: MediaQuery.of(context).size.width * 0.05,
            //         top: MediaQuery.of(context).size.height * 0.0125,
            //         bottom: MediaQuery.of(context).size.height * 0.0125),
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //       boxShadow: [
            //         BoxShadow(
            //           color: Color.fromARGB(255, 186, 222, 255),
            //           offset: Offset(0.0, 2.0), //(x,y)
            //           blurRadius: 10.0,
            //         )
            //       ],
            //       color: Color.fromARGB(255, 247, 252, 255),
            //       borderRadius: BorderRadius.only(
            //           topRight: Radius.circular(
            //               MediaQuery.of(context).size.width * 0.025),
            //           bottomRight: Radius.circular(
            //               MediaQuery.of(context).size.width * 0.025)),
            //     ),
            //     // child: Center(
            //     //   child: Row(
            //     //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     //     children: [
            //     //       // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
            //     //       Image.asset(
            //     //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
            //     //         height: MediaQuery.of(context).size.height * 0.155,
            //     //         // width: 125,
            //     //         width: MediaQuery.of(context).size.width * 0.325,
            //     //       ),

            //     //       Padding(
            //     //         padding: EdgeInsets.only(
            //     //             left: MediaQuery.of(context).size.width * 0.02),
            //     //         child: Column(
            //     //           crossAxisAlignment: CrossAxisAlignment.start,
            //     //           children: [
            //     //             Text(
            //     //               'Atal Gupta',
            //     //               style: TextStyle(
            //     //                 fontSize: 21,
            //     //               ),
            //     //             ),
            //     //             Text(
            //     //               'Backend',
            //     //               style: TextStyle(
            //     //                 fontSize: 17,
            //     //                 color: Color.fromARGB(255, 111, 111, 111),
            //     //               ),
            //     //             ),
            //     //             // VerticalDivider(
            //     //             //     thickness: 3,
            //     //             //     width: 4,
            //     //             //     indent: 0,
            //     //             //     color:  Colors.black,
            //     //             //   ),
            //     //             Container(
            //     //               width: MediaQuery.of(context).size.width * 0.325,
            //     //               child: Divider(
            //     //                 color: Colors.grey,
            //     //                 thickness: 2.0,
            //     //               ),
            //     //             ),
            //     //             // Container(
            //     //             //   decoration: BoxDecoration(
            //     //             //     border: Border(
            //     //             //       bottom: BorderSide(
            //     //             //           color: Colors.black, width: 10.0),
            //     //             //     ),
            //     //             //   ),
            //     //             // ),
            //     //             // Container(
            //     //             //   decoration: new BoxDecoration(
            //     //             //     border: Border(
            //     //             //       top: BorderSide(width: 1.0, color: Colors.black),
            //     //             //       left:
            //     //             //           BorderSide(width: 1.0, color: Colors.grey),
            //     //             //       right:
            //     //             //           BorderSide(width: 1.0, color: Colors.grey),
            //     //             //       bottom:
            //     //             //           BorderSide(width: 1.0, color: Colors.grey),
            //     //             //     ),
            //     //             //   ),
            //     //             // ),
            //     //             // Container(
            //     //             //   width: double.infinity,
            //     //             //   height: 2, // Thickness
            //     //             //   color: Colors.black,
            //     //             // ),
            //     //             // SizedBox(
            //     //             //   height: 50,
            //     //             //   child: Divider(
            //     //             //     thickness: 3,
            //     //             //     width: 4,
            //     //             //     indent: 0,
            //     //             //     color:  Colors.black,
            //     //             //   ),
            //     //             // ),
            //     //             SizedBox(
            //     //               height:
            //     //                   MediaQuery.of(context).size.height * 0.01875,
            //     //             ),
            //     //             // TextButton(
            //     //             //   child: Text('YO'),
            //     //             //   onPressed: () {
            //     //             //     _launchWhatsapp();
            //     //             //   },
            //     //             // ),
            //     //             buildSocialButtons(),
            //     //             // Icon(FontAwesomeIcons.facebook),
            //     //           ],
            //     //         ),
            //     //       )
            //     //     ],
            //     //   ),
            //     // ),
            //   ),
            // ),

            SizedBox(
              height: 10,
            ),

            //BB//

            Padding(
              // padding: const EdgeInsets.only(left:8.0, top: 8),
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                // padding: EdgeInsets.only(left: 15, top: 6),
                height: 60,
                // width: 400,
                // width: 365,
                // width: 380,
                width: MediaQuery.of(context).size.width * 0.99,

                decoration: BoxDecoration(
                    color: Colors.green,
                    // borderRadius: BorderRadius.circular(20),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Marketing',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            // Padding(
            //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
            //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/IMG_20221024_192251-011.jpeg.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Balgopal Moharana',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Core',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 25,
            //             ),
            //             buildSocialButtons(),
            //             // Icon(FontAwesomeIcons.facebook),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            //A//

            Padding(
              // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
              padding: EdgeInsets.only(
                // top: 15.0,
                top: MediaQuery.of(context).size.height * 0.01875,
                right: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Container(
                // height: 130,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.0125,
                    bottom: MediaQuery.of(context).size.height * 0.0125),
                // width: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 222, 255),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: MediaQuery.of(context).size.width * 0.025,
                    )
                  ],
                  color: Color.fromARGB(255, 247, 252, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025)),
                ),
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
                      Image.asset(
                        // 'images/65image1666138096723-01-01.jpeg.jpg',
                        // 'images/IMG_20221024_192251-022.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
                        // 'images/user_icon_150670.webp',
                        'images/BG.jpg',
                        fit: BoxFit.cover,

                        // height: 125,
                        height: MediaQuery.of(context).size.height * 0.155,
                        // width: 125,
                        width: MediaQuery.of(context).size.width * 0.325,
                      ),
                      // Image.asset(
                      //   'images/11IMG-20220212-WA0024.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),
                      // Image.asset(
                      //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Balgopal Moharana',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              'Core',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 111, 111, 111),
                              ),
                            ),

                            Container(
                              // width: 130,
                              width: MediaQuery.of(context).size.width * 0.325,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // ),
                            SizedBox(
                              // height: 15,
                              height:
                                  MediaQuery.of(context).size.height * 0.01875,
                            ),
                            // TextButton(
                            //   child: Text('YO'),
                            //   onPressed: () {
                            //     _launchWhatsapp();
                            //   },
                            // ),
                            buildSocialButtons7(),
                            // Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
              padding: EdgeInsets.only(
                // top: 15.0,
                top: MediaQuery.of(context).size.height * 0.01875,
                right: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Container(
                // height: 130,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.0125,
                    bottom: MediaQuery.of(context).size.height * 0.0125),
                // width: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 222, 255),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: MediaQuery.of(context).size.width * 0.025,
                    )
                  ],
                  color: Color.fromARGB(255, 247, 252, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025)),
                ),
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
                      Image.asset(
                        // 'images/65image1666138096723-01-01.jpeg.jpg',
                        // 'images/IMG_20221024_192251-022.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
                        // 'images/user_icon_150670.webp',
                        'images/IMG_20220723_233612_Bokeh.jpg',
                        fit: BoxFit.cover,
                        // height: 125,
                        height: MediaQuery.of(context).size.height * 0.155,
                        // width: 125,
                        width: MediaQuery.of(context).size.width * 0.325,
                      ),
                      // Image.asset(
                      //   'images/11IMG-20220212-WA0024.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),
                      // Image.asset(
                      //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jinious Sheth',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              'Coordinator',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 111, 111, 111),
                              ),
                            ),

                            Container(
                              // width: 130,
                              width: MediaQuery.of(context).size.width * 0.325,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // ),
                            SizedBox(
                              // height: 15,
                              height:
                                  MediaQuery.of(context).size.height * 0.01875,
                            ),
                            // TextButton(
                            //   child: Text('YO'),
                            //   onPressed: () {
                            //     _launchWhatsapp();
                            //   },
                            // ),
                            buildSocialButtons8(),
                            // Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
              padding: EdgeInsets.only(
                // top: 15.0,
                top: MediaQuery.of(context).size.height * 0.01875,
                right: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Container(
                // height: 130,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.0125,
                    bottom: MediaQuery.of(context).size.height * 0.0125),
                // width: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 222, 255),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: MediaQuery.of(context).size.width * 0.025,
                    )
                  ],
                  color: Color.fromARGB(255, 247, 252, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025)),
                ),
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
                      Image.asset(
                        // 'images/65image1666138096723-01-01.jpeg.jpg',
                        // 'images/IMG_20221024_192251-022.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
                        'images/kanika.jpeg',
                        fit: BoxFit.cover,

                        // height: 125,
                        height: MediaQuery.of(context).size.height * 0.155,
                        // width: 125,
                        width: MediaQuery.of(context).size.width * 0.325,
                      ),
                      // Image.asset(
                      //   'images/11IMG-20220212-WA0024.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),
                      // Image.asset(
                      //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kanika Dixit',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              'Coordinator',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 111, 111, 111),
                              ),
                            ),

                            Container(
                              // width: 130,
                              width: MediaQuery.of(context).size.width * 0.325,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // ),
                            SizedBox(
                              // height: 15,
                              height:
                                  MediaQuery.of(context).size.height * 0.01875,
                            ),
                            // TextButton(
                            //   child: Text('YO'),
                            //   onPressed: () {
                            //     _launchWhatsapp();
                            //   },
                            // ),
                            buildSocialButtons9(),
                            // Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //

            // Padding(
            //   padding: const EdgeInsets.only(top: 20, left: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Kanika Dixit',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Coordinator',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             buildSocialButtons2(),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            //AA//

            // Padding(
            // // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
            // padding: EdgeInsets.only(
            //   top: MediaQuery.of(context).size.height * 0.01875,
            //   right: MediaQuery.of(context).size.width * 0.025,
            // ),
            // child: Container(
            //   // height: 130,
            //   padding: EdgeInsets.only(
            //       left: MediaQuery.of(context).size.width * 0.05,
            //       top: MediaQuery.of(context).size.height * 0.0125,
            //       bottom: MediaQuery.of(context).size.height * 0.0125),
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     boxShadow: [
            //       BoxShadow(
            //         color: Color.fromARGB(255, 186, 222, 255),
            //         offset: Offset(0.0, 2.0), //(x,y)
            //         blurRadius: 10.0,
            //       )
            //     ],
            //     color: Color.fromARGB(255, 247, 252, 255),
            //     borderRadius: BorderRadius.only(
            //         topRight: Radius.circular(
            //             MediaQuery.of(context).size.width * 0.025),
            //         bottomRight: Radius.circular(
            //             MediaQuery.of(context).size.width * 0.025)),
            //   ),
            // child: Center(
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
            //       Image.asset(
            //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
            //         height: MediaQuery.of(context).size.height * 0.155,
            //         // width: 125,
            //         width: MediaQuery.of(context).size.width * 0.325,
            //       ),

            //       Padding(
            //         padding: EdgeInsets.only(
            //             left: MediaQuery.of(context).size.width * 0.02),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Atal Gupta',
            //               style: TextStyle(
            //                 fontSize: 21,
            //               ),
            //             ),
            //             Text(
            //               'Backend',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             // VerticalDivider(
            //             //     thickness: 3,
            //             //     width: 4,
            //             //     indent: 0,
            //             //     color:  Colors.black,
            //             //   ),
            //             Container(
            //               width: MediaQuery.of(context).size.width * 0.325,
            //               child: Divider(
            //                 color: Colors.grey,
            //                 thickness: 2.0,
            //               ),
            //             ),
            //             // Container(
            //             //   decoration: BoxDecoration(
            //             //     border: Border(
            //             //       bottom: BorderSide(
            //             //           color: Colors.black, width: 10.0),
            //             //     ),
            //             //   ),
            //             // ),
            //             // Container(
            //             //   decoration: new BoxDecoration(
            //             //     border: Border(
            //             //       top: BorderSide(width: 1.0, color: Colors.black),
            //             //       left:
            //             //           BorderSide(width: 1.0, color: Colors.grey),
            //             //       right:
            //             //           BorderSide(width: 1.0, color: Colors.grey),
            //             //       bottom:
            //             //           BorderSide(width: 1.0, color: Colors.grey),
            //             //     ),
            //             //   ),
            //             // ),
            //             // Container(
            //             //   width: double.infinity,
            //             //   height: 2, // Thickness
            //             //   color: Colors.black,
            //             // ),
            //             // SizedBox(
            //             //   height: 50,
            //             //   child: Divider(
            //             //     thickness: 3,
            //             //     width: 4,
            //             //     indent: 0,
            //             //     color:  Colors.black,
            //             //   ),
            //             // ),
            //             SizedBox(
            //               height:
            //                   MediaQuery.of(context).size.height * 0.01875,
            //             ),
            //             // TextButton(
            //             //   child: Text('YO'),
            //             //   onPressed: () {
            //             //     _launchWhatsapp();
            //             //   },
            //             // ),
            //             buildSocialButtons(),
            //             // Icon(FontAwesomeIcons.facebook),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            //   ),
            // ),

            SizedBox(
              height: 10,
            ),

            //CC//

            Padding(
              // padding: const EdgeInsets.only(left:8.0, top: 8),
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                // padding: EdgeInsets.only(left: 15, top: 6),
                height: 60,
                // width: 400,
                // width: 365,
                // width: 380,
                width: MediaQuery.of(context).size.width * 0.99,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 63, 181, 171),
                    // borderRadius: BorderRadius.circular(20),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Design',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            // Padding(
            //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
            //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/new1.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Ayush Modi',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Frontend',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 25,
            //             ),
            //             buildSocialButtons(),
            //             // Icon(FontAwesomeIcons.facebook),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            //A//

            Padding(
              // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
              padding: EdgeInsets.only(
                // top: 15.0,
                top: MediaQuery.of(context).size.height * 0.01875,
                right: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Container(
                // height: 130,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.0125,
                    bottom: MediaQuery.of(context).size.height * 0.0125),
                // width: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 222, 255),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: MediaQuery.of(context).size.width * 0.025,
                    )
                  ],
                  color: Color.fromARGB(255, 247, 252, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025)),
                ),
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
                      Image.asset(
                        // 'images/65image1666138096723-01-01.jpeg.jpg',
                        // 'images/IMG_20221024_192251-022.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
                        // 'images/user_icon_150670.webp',
                        'images/IMG_20221029_172550.jpg',
                        fit: BoxFit.cover,
                        // height: 125,
                        height: MediaQuery.of(context).size.height * 0.155,
                        // width: 125,
                        width: MediaQuery.of(context).size.width * 0.325,
                      ),
                      // Image.asset(
                      //   'images/11IMG-20220212-WA0024.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),
                      // Image.asset(
                      //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Divya Varma',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              'Core',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 111, 111, 111),
                              ),
                            ),

                            Container(
                              // width: 130,
                              width: MediaQuery.of(context).size.width * 0.325,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // ),
                            SizedBox(
                              // height: 15,
                              height:
                                  MediaQuery.of(context).size.height * 0.01875,
                            ),
                            // TextButton(
                            //   child: Text('YO'),
                            //   onPressed: () {
                            //     _launchWhatsapp();
                            //   },
                            // ),
                            buildSocialButtons10(),
                            // Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
              padding: EdgeInsets.only(
                // top: 15.0,
                top: MediaQuery.of(context).size.height * 0.01875,
                right: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Container(
                // height: 130,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.0125,
                    bottom: MediaQuery.of(context).size.height * 0.0125),
                // width: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 222, 255),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: MediaQuery.of(context).size.width * 0.025,
                    )
                  ],
                  color: Color.fromARGB(255, 247, 252, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025)),
                ),
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
                      Image.asset(
                        // 'images/65image1666138096723-01-01.jpeg.jpg',
                        // 'images/IMG_20221024_192251-022.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
                        // 'images/user_icon_150670.webp',
                        'images/Shrey (1).jpg',
                        // 'images/WhatsApp Image 2022-11-02 at 00.41.23.jpg',
                        fit: BoxFit.cover,
                        // height: 125,
                        height: MediaQuery.of(context).size.height * 0.155,
                        // width: 125,
                        width: MediaQuery.of(context).size.width * 0.325,
                      ),
                      // Image.asset(
                      //   'images/11IMG-20220212-WA0024.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),
                      // Image.asset(
                      //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shrey Joshi',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              'Coordinator',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 111, 111, 111),
                              ),
                            ),

                            Container(
                              // width: 130,
                              width: MediaQuery.of(context).size.width * 0.325,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // ),
                            SizedBox(
                              // height: 15,
                              height:
                                  MediaQuery.of(context).size.height * 0.01875,
                            ),
                            // TextButton(
                            //   child: Text('YO'),
                            //   onPressed: () {
                            //     _launchWhatsapp();
                            //   },
                            // ),
                            buildSocialButtons11(),
                            // Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
              padding: EdgeInsets.only(
                // top: 15.0,
                top: MediaQuery.of(context).size.height * 0.01875,
                right: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Container(
                // height: 130,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.0125,
                    bottom: MediaQuery.of(context).size.height * 0.0125),
                // width: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 186, 222, 255),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: MediaQuery.of(context).size.width * 0.025,
                    )
                  ],
                  color: Color.fromARGB(255, 247, 252, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.025)),
                ),
                child: Center(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
                      Image.asset(
                        // 'images/65image1666138096723-01-01.jpeg.jpg',
                        // 'images/IMG_20221024_192251-022.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-02~2.jpeg.jpg',
                        // 'images/IMG_20221024_192251-01~2.jpeg.jpg',
                        'images/ananya.jpg',
                        fit: BoxFit.cover,
                        // height: 125,
                        height: MediaQuery.of(context).size.height * 0.155,
                        // width: 125,
                        width: MediaQuery.of(context).size.width * 0.325,
                      ),
                      // Image.asset(
                      //   'images/11IMG-20220212-WA0024.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),
                      // Image.asset(
                      //   'images/IMG-20220212-WA0024-015.jpeg.jpg',
                      //   // height: 125,
                      //   height: MediaQuery.of(context).size.height * 0.155,
                      //   // width: 125,
                      //   width: MediaQuery.of(context).size.width * 0.325,
                      // ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ananya Shajeev',
                              style: TextStyle(
                                fontSize: 21,
                              ),
                            ),
                            Text(
                              'Coordinator',
                              style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 111, 111, 111),
                              ),
                            ),

                            Container(
                              // width: 130,
                              width: MediaQuery.of(context).size.width * 0.325,
                              child: Divider(
                                color: Colors.grey,
                                thickness: 2.0,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // ),
                            SizedBox(
                              // height: 15,
                              height:
                                  MediaQuery.of(context).size.height * 0.01875,
                            ),
                            // TextButton(
                            //   child: Text('YO'),
                            //   onPressed: () {
                            //     _launchWhatsapp();
                            //   },
                            // ),
                            buildSocialButtons12(),
                            // Icon(FontAwesomeIcons.facebook),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //

            // Padding(
            //   padding: const EdgeInsets.only(top: 20, left: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Atal Gupta',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Backend',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             buildSocialButtons2(),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            //AA//

            //   Padding(
            //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
            //   padding: EdgeInsets.only(
            //     top: MediaQuery.of(context).size.height * 0.01875,
            //     right: MediaQuery.of(context).size.width * 0.025,
            //   ),
            //   child: Container(
            //     // height: 130,
            //     padding: EdgeInsets.only(
            //         left: MediaQuery.of(context).size.width * 0.05,
            //         top: MediaQuery.of(context).size.height * 0.0125,
            //         bottom: MediaQuery.of(context).size.height * 0.0125),
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //       boxShadow: [
            //         BoxShadow(
            //           color: Color.fromARGB(255, 186, 222, 255),
            //           offset: Offset(0.0, 2.0), //(x,y)
            //           blurRadius: 10.0,
            //         )
            //       ],
            //       color: Color.fromARGB(255, 247, 252, 255),
            //       borderRadius: BorderRadius.only(
            //           topRight: Radius.circular(
            //               MediaQuery.of(context).size.width * 0.025),
            //           bottomRight: Radius.circular(
            //               MediaQuery.of(context).size.width * 0.025)),
            //     ),
            //     // child: Center(
            //     //   child: Row(
            //     //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     //     children: [
            //     //       // Image.asset('images/new1.jpg', height: 0.55, width: 125,),
            //     //       Image.asset(
            //     //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
            //     //         height: MediaQuery.of(context).size.height * 0.155,
            //     //         // width: 125,
            //     //         width: MediaQuery.of(context).size.width * 0.325,
            //     //       ),

            //     //       Padding(
            //     //         padding: EdgeInsets.only(
            //     //             left: MediaQuery.of(context).size.width * 0.02),
            //     //         child: Column(
            //     //           crossAxisAlignment: CrossAxisAlignment.start,
            //     //           children: [
            //     //             Text(
            //     //               'Atal Gupta',
            //     //               style: TextStyle(
            //     //                 fontSize: 21,
            //     //               ),
            //     //             ),
            //     //             Text(
            //     //               'Backend',
            //     //               style: TextStyle(
            //     //                 fontSize: 17,
            //     //                 color: Color.fromARGB(255, 111, 111, 111),
            //     //               ),
            //     //             ),
            //     //             // VerticalDivider(
            //     //             //     thickness: 3,
            //     //             //     width: 4,
            //     //             //     indent: 0,
            //     //             //     color:  Colors.black,
            //     //             //   ),
            //     //             Container(
            //     //               width: MediaQuery.of(context).size.width * 0.325,
            //     //               child: Divider(
            //     //                 color: Colors.grey,
            //     //                 thickness: 2.0,
            //     //               ),
            //     //             ),
            //     //             // Container(
            //     //             //   decoration: BoxDecoration(
            //     //             //     border: Border(
            //     //             //       bottom: BorderSide(
            //     //             //           color: Colors.black, width: 10.0),
            //     //             //     ),
            //     //             //   ),
            //     //             // ),
            //     //             // Container(
            //     //             //   decoration: new BoxDecoration(
            //     //             //     border: Border(
            //     //             //       top: BorderSide(width: 1.0, color: Colors.black),
            //     //             //       left:
            //     //             //           BorderSide(width: 1.0, color: Colors.grey),
            //     //             //       right:
            //     //             //           BorderSide(width: 1.0, color: Colors.grey),
            //     //             //       bottom:
            //     //             //           BorderSide(width: 1.0, color: Colors.grey),
            //     //             //     ),
            //     //             //   ),
            //     //             // ),
            //     //             // Container(
            //     //             //   width: double.infinity,
            //     //             //   height: 2, // Thickness
            //     //             //   color: Colors.black,
            //     //             // ),
            //     //             // SizedBox(
            //     //             //   height: 50,
            //     //             //   child: Divider(
            //     //             //     thickness: 3,
            //     //             //     width: 4,
            //     //             //     indent: 0,
            //     //             //     color:  Colors.black,
            //     //             //   ),
            //     //             // ),
            //     //             SizedBox(
            //     //               height:
            //     //                   MediaQuery.of(context).size.height * 0.01875,
            //     //             ),
            //     //             // TextButton(
            //     //             //   child: Text('YO'),
            //     //             //   onPressed: () {
            //     //             //     _launchWhatsapp();
            //     //             //   },
            //     //             // ),
            //     //             buildSocialButtons(),
            //     //             // Icon(FontAwesomeIcons.facebook),
            //     //           ],
            //     //         ),
            //     //       )
            //     //     ],
            //     //   ),
            //     // ),
            //   ),
            // ),

            SizedBox(
              height: 20,
            ),

            // Container(
            //   padding: EdgeInsets.only(left: 15, top: 12),
            //   height: 60,
            //   width: 400,
            //   decoration: BoxDecoration(color: Colors.indigo),
            //   child: Text(
            //     'Sponsorship',
            //     style: TextStyle(fontSize: 30, color: Colors.white),
            //   ),
            // ),
            // Padding(
            //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
            //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/new1.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Ayush Modi',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Frontend',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 25,
            //             ),
            //             buildSocialButtons(),
            //             // Icon(FontAwesomeIcons.facebook),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            // //

            // Padding(
            //   padding: const EdgeInsets.only(top: 20, left: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Atal Gupta',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Backend',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             buildSocialButtons2(),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            // //
            // //
            // //

            // SizedBox(
            //   height: 20,
            // ),

            // //

            // //

            // //

            // Container(
            //   padding: EdgeInsets.only(left: 15, top: 12),
            //   height: 60,
            //   width: 400,
            //   decoration: BoxDecoration(color: Colors.green),
            //   child: Text(
            //     'Marketing',
            //     style: TextStyle(fontSize: 30, color: Colors.white),
            //   ),
            // ),
            // Padding(
            //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
            //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/new1.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Ayush Modi',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Frontend',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 25,
            //             ),
            //             buildSocialButtons(),
            //             // Icon(FontAwesomeIcons.facebook),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            // //

            // Padding(
            //   padding: const EdgeInsets.only(top: 20, left: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Atal Gupta',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Backend',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             buildSocialButtons2(),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            // //

            // //

            // //

            // SizedBox(
            //   height: 20,
            // ),

            // //

            // //

            // //

            // Container(
            //   padding: EdgeInsets.only(left: 15, top: 12),
            //   height: 60,
            //   width: 400,
            //   decoration: BoxDecoration(color: Colors.yellow),
            //   child: Text(
            //     'Design',
            //     style: TextStyle(fontSize: 30, color: Colors.white),
            //   ),
            // ),
            // Padding(
            //   // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
            //   padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/new1.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Ayush Modi',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Frontend',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 25,
            //             ),
            //             buildSocialButtons(),
            //             // Icon(FontAwesomeIcons.facebook),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            // //

            // Padding(
            //   padding: const EdgeInsets.only(top: 20, left: 15),
            //   child: Row(
            //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // Image.asset('images/new1.jpg', height: 125, width: 125,),
            //       Image.asset(
            //         'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
            //         height: 125,
            //         width: 125,
            //       ),

            //       Padding(
            //         padding: const EdgeInsets.only(left: 8.0),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text(
            //               'Atal Gupta',
            //               style: TextStyle(
            //                 fontSize: 23,
            //               ),
            //             ),
            //             Text(
            //               'Backend',
            //               style: TextStyle(
            //                 fontSize: 17,
            //                 color: Color.fromARGB(255, 111, 111, 111),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 20,
            //             ),
            //             buildSocialButtons2(),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            // //

            // //

            // //

            // //
            // //
            // //

            // SizedBox(
            //   height: 30,
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 53.0),
            //   child: Image.asset(
            //     'images/Mt. B 1.png',
            //     height: 300,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

Widget buildSocialButton({
  required IconData icon,
  Color? color,
  required VoidCallback onClicked,
}) =>
    InkWell(
      child: Container(
        width: 30,
        height: 30,
        child: Center(
            child: FaIcon(
          icon,
          color: color,
          size: 30,
        )),
      ),
      onTap: onClicked,
    );

Future share1(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  // final text = 'My';
  // final urlShare =
  //     Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp1 = "+918277376320";

  final urls = {
    // SocialMedia.facebook: 'https://www.facebook.com/',
    // SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    // SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp1&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/na_cool26/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future share2(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  // final text = 'My';
  // final urlShare =
  //     Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp2 = "+919352334815";

  final urls = {
    // SocialMedia.facebook: 'https://www.facebook.com/',
    // SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    // SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp2&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/yrr_manas/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future share3(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  // final text = 'My';
  // final urlShare =
  //     Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp3 = "+919660285907";

  final urls = {
    // SocialMedia.facebook: 'https://www.facebook.com/',
    // SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    // SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp3&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/yash.bothra/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future share4(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  // final text = 'My';
  // final urlShare =
  //     Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp4 = "+918851142209";

  final urls = {
    // SocialMedia.facebook: 'https://www.facebook.com/',
    // SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    // SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp4&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/mihir_agarwal17/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future share5(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  // final text = 'My';
  // final urlShare =
  //     Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp5 = "+916378010027";

  final urls = {
    // SocialMedia.facebook: 'https://www.facebook.com/',
    // SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    // SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp5&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/lokesh572_kh/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future share6(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  // final text = 'My';
  // final urlShare =
  //     Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp6 = "+918239926501";

  final urls = {
    // SocialMedia.facebook: 'https://www.facebook.com/',
    // SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    // SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp6&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/anisha.gattani/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future share7(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  // final text = 'My';
  // final urlShare =
  //     Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp7 = "+919831167164";

  final urls = {
    // SocialMedia.facebook: 'https://www.facebook.com/',
    // SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    // SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp7&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/lucifer_4073/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future share8(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  // final text = 'My';
  // final urlShare =
  //     Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp8 = "+916352847062";

  final urls = {
    // SocialMedia.facebook: 'https://www.facebook.com/',
    // SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    // SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp8&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/jinious_1507/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future share9(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  // final text = 'My';
  // final urlShare =
  //     Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp9 = "+919462151116";

  final urls = {
    // SocialMedia.facebook: 'https://www.facebook.com/',
    // SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    // SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp9&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/dtkanika_23/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future share10(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  // final text = 'My';
  // final urlShare =
  //     Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp10 = "+919022394621";

  final urls = {
    // SocialMedia.facebook: 'https://www.facebook.com/',
    // SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    // SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp10&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/_.divyavarma._/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future share11(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  // final text = 'My';
  // final urlShare =
  //     Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp11 = "+919998223717";

  final urls = {
    // SocialMedia.facebook: 'https://www.facebook.com/',
    // SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    // SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp11&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/sjjoshi_3011/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future share12(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  // final text = 'My';
  // final urlShare =
  //     Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp12 = "+919820737449";

  final urls = {
    // SocialMedia.facebook: 'https://www.facebook.com/',
    // SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    // SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp12&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/ugh.nanyya/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

// Future share2(SocialMedia socialPlatform) async {
//   final subject = 'Hi';
//   final text = 'My';
//   final urlShare =
//       Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
//   var whatsapp1 = "+918077261776";

//   final urls = {
//     SocialMedia.facebook: 'https://www.facebook.com/',
//     SocialMedia.twitter: 'https://twitter.com/explore',
//     SocialMedia.email:
//         'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
//     SocialMedia.linkedin: 'https://www.linkedin.com/in/atal-gupta-592914243/',
//     // SocialMedia.linkedin:
//     //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
//     // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
//     SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp1&text=$subject',
//     SocialMedia.instagram: 'https://www.instagram.com/atal9149/',
//   };

//   final url = urls[socialPlatform]!;

//   if (await canLaunch(url)) {
//     await launch(url);
//   }
// }