import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

enum SocialMedia { facebook, twitter, email, linkedin, whatsapp, instagram }

class develop extends StatefulWidget {
  const develop({Key? key}) : super(key: key);

// _launchWhatsapp() async {
//     var whatsapp = "+919714649511";
//     var whatsappAndroid =
//         Uri.parse("whatsapp://send?phone=$whatsapp&text=Hi");
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

// Widget buildSocialButtons() => Card(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           buildSocialButton(
//               icon: FontAwesomeIcons.linkedin,
//               color: Colors.blue,
//               onClicked: () => share(SocialMedia.linkedin)),
//           SizedBox(
//             width: MediaQuery.of(context).size.width * 0.025,
//           ),
//           buildSocialButton(
//               icon: FontAwesomeIcons.whatsapp,
//               color: Colors.green,
//               onClicked: () => share(SocialMedia.whatsapp)),
//         ],
//       ),
//     );
  @override
  State<develop> createState() => _developState();
}

class _developState extends State<develop> {
  _launchWhatsapp() async {
    var whatsapp = "+919714649511";
    var whatsappAndroid = Uri.parse("whatsapp://send?phone=$whatsapp&text=Hi");
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

  Widget buildSocialButton({
    required IconData icon,
    Color? color,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        child: Container(
          // width: 35,
          width: MediaQuery.of(context).size.width * 0.075,
          // height: 35,
          height: MediaQuery.of(context).size.height * 0.0375,
          child: Center(
              child: FaIcon(
            icon,
            color: color,
            size: 30,
          )),
        ),
        onTap: onClicked,
      );

//       Widget buildSocialButton({
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

  Widget buildSocialButtons() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildSocialButton(
                icon: FontAwesomeIcons.linkedin,
                color: Colors.blue,
                onClicked: () => share1(SocialMedia.linkedin)),
            SizedBox(
              // width: MediaQuery.of(context).size.width * 0.025,
              width: MediaQuery.of(context).size.width * 0.025,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share1(SocialMedia.instagram)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.025,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share1(SocialMedia.whatsapp)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.015,
            ),
            buildSocialButton(
              icon: Icons.email,
              // color: Color.fromARGB(255, 239, 94, 41),
              color: Color.fromARGB(255, 234, 66, 52),
              onClicked: () => share1(SocialMedia.email),
            ),
            // buildSocialButton(
            //   // icon: FontAwesomeIcons.phone,
            //   icon: Icons.phone,
            //   color: Colors.black,
            //   onClicked: () async {
            //     var whatsapp1 = "+919714649511";
            //     launch('tel://$whatsapp1');
            //   },
            // ),
          ],
        ),
      );

  Widget buildSocialButtons2() => Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildSocialButton(
                icon: FontAwesomeIcons.linkedin,
                color: Colors.blue,
                onClicked: () => share2(SocialMedia.linkedin)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.025,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.instagram,
                color: Colors.pink,
                onClicked: () => share2(SocialMedia.instagram)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.025,
            ),
            buildSocialButton(
                icon: FontAwesomeIcons.whatsapp,
                color: Colors.green,
                onClicked: () => share2(SocialMedia.whatsapp)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.025,
            ),
            buildSocialButton(
              icon: Icons.email,
              // color: Color.fromARGB(255, 239, 94, 41),
              color: Color.fromARGB(255, 234, 66, 52),
              onClicked: () => share2(SocialMedia.email),
            ),
            // buildSocialButton(
            //   // icon: FontAwesomeIcons.phone,
            //   icon: Icons.phone,
            //   color: Colors.black,
            //   onClicked: () async {
            //     var whatsapp1 = "+918077261776";
            //     launch('tel://$whatsapp1');
            //   },
            // ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 221, 221, 221),
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      // backgroundColor: Color.fromARGB(255, 243, 243, 243),
      // backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text('Developers'),
        backgroundColor: Color.fromARGB(255, 255, 37, 22),
      ),
      body: Column(
        children: [
          Padding(
            // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
            padding: EdgeInsets.only(
              // top: 15.0,
              top: MediaQuery.of(context).size.height * 0.01875,
              right: MediaQuery.of(context).size.width * 0.025,
            ),
            child: Container(
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
                      // 'images/ayush6.jpeg',
                      'images/ayusho.jpg',
                      // fit: BoxFit.cover,
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
                            'Ayush Modi',
                            style: TextStyle(
                              fontSize: 21,
                            ),
                          ),
                          Text(
                            'Frontend, Backend',
                            style: TextStyle(
                              fontSize: 17,
                              // fontSize: 14,
                              // fontSize: 16,
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
          //   padding: const EdgeInsets.only(top: 20, left: 10),
          //   child: Container(
          //     padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
          //     width: 400,
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
          //           topLeft: Radius.circular(10),
          //           bottomLeft: Radius.circular(10)),
          //     ),
          //     child: Row(
          //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         // Image.asset('images/new1.jpg', height: 125, width: 125,),
          //         Image.asset(
          //           'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
          //           height: 125,
          //           width: 125,
          //         ),

          //         Padding(
          //           padding: const EdgeInsets.only(left: 8.0),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 'Atal Gupta',
          //                 style: TextStyle(
          //                   fontSize: 23,
          //                 ),
          //               ),
          //               Text(
          //                 'Backend',
          //                 style: TextStyle(
          //                   fontSize: 17,
          //                   color: Color.fromARGB(255, 111, 111, 111),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 20,
          //               ),
          //               // TextButton(
          //               //   child: Text('YO'),
          //               //   onPressed: () {
          //               //     _launchWhatsapp();
          //               //   },
          //               // ),
          //               buildSocialButtons2(),
          //               // Icon(FontAwesomeIcons.facebook),
          //             ],
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),

          //
          //.
          //.
          //.
          //

          Padding(
            // padding: const EdgeInsets.only(top: 100.0, left: 15, right: 15),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01875,
              right: MediaQuery.of(context).size.width * 0.025,
            ),
            child: Container(
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
                      'images/WhatsApp Image 2022-10-18 at 03.58.221.jpg',
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
                            'Atal Gupta',
                            style: TextStyle(
                              fontSize: 21,
                            ),
                          ),
                          Text(
                            'Backend',
                            // '',
                            style: TextStyle(
                              fontSize: 17,
                              // fontSize: 16,
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

          SizedBox(
            // height: 84,
            // height: MediaQuery.of(context).size.height * 0.105,
            height: MediaQuery.of(context).size.height * 0.095,
          ),
          // Image.asset(
          //   'images/Mt. B 1.png',
          //   // height: 300,
          //   height: MediaQuery.of(context).size.height * 0.375,
          // ),
          Container(
            height: MediaQuery.of(context).size.height * 0.375,
            // child: SvgPicture.asset('images/Mt. B 1.svg'),
            child: SvgPicture.asset('images/B_Mount 2.svg'),
          ),
        ],
      ),
    );
  }

  // _launchWhatsapp() async {
  //   var whatsapp = "+919714649511";
  //   var whatsappAndroid =
  //       Uri.parse("whatsapp://send?phone=$whatsapp&text=Hi");
  //   if (await canLaunchUrl(whatsappAndroid)) {
  //     await launchUrl(whatsappAndroid);
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //         content: Text("WhatsApp is not installed on the device"),
  //       ),
  //     );
  //   }
  // }
}

// _launchWhatsapp() async {
//     var whatsapp = "+919714649511";
//     var whatsappAndroid =
//         Uri.parse("whatsapp://send?phone=$whatsapp&text=Hi");
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

// Widget buildSocialButtons() => Card(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           buildSocialButton(
//               icon: FontAwesomeIcons.linkedin,
//               color: Colors.blue,
//               onClicked: () => share(SocialMedia.linkedin)),
//           SizedBox(
//             width: MediaQuery.of(context).size.width * 0.025,
//           ),
//           buildSocialButton(
//               icon: FontAwesomeIcons.whatsapp,
//               color: Colors.green,
//               onClicked: () => share(SocialMedia.whatsapp)),
//         ],
//       ),
//     );

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

Future share1(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  final text = 'My';
  final urlShare =
      Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp1 = "+919714649511";

  final urls = {
    SocialMedia.facebook: 'https://www.facebook.com/',
    SocialMedia.twitter: 'https://twitter.com/explore',
    // SocialMedia.email:
    //     'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
    SocialMedia.email: 'mailto:<modiayush@iitgn.ac.in>?body=Hello',
    SocialMedia.linkedin: 'https://www.linkedin.com/in/ayush-modi-742a9822a/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp1&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/_ayushmodi/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future share2(SocialMedia socialPlatform) async {
  final subject = 'Hi';
  final text = 'My';
  final urlShare =
      Uri.encodeComponent('https://www.youtube.com/watch?v=bWehAFTFc9o');
  var whatsapp1 = "+918077261776";

  final urls = {
    SocialMedia.facebook: 'https://www.facebook.com/',
    SocialMedia.twitter: 'https://twitter.com/explore',
    SocialMedia.email: 'mailto:<guptaatal@iitgn.ac.in>?body=Hello',    
    SocialMedia.linkedin: 'https://www.linkedin.com/in/atal-gupta-592914243/',
    // SocialMedia.linkedin:
    //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
    // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
    SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp1&text=$subject',
    SocialMedia.instagram: 'https://www.instagram.com/atal9149/',
  };

  final url = urls[socialPlatform]!;

  if (await canLaunch(url)) {
    await launch(url);
  }
}


// Widget buildArticle() => ListView(
//   padding: EdgeInsets.all(kIsWeb ? 32:16),
//   children: [Image.asset('images\image2.jpeg',),],
// );
