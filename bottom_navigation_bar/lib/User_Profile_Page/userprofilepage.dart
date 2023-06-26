import 'package:bottom_navigation_bar/Intro_Screens/logininfopage.dart';
import 'package:bottom_navigation_bar/Intro_Screens/userform.dart';
import 'package:bottom_navigation_bar/Intro_Screens/users_sheet_api.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/Contact_Us.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/Developers.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/OurTeam.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/Sponsors.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/UserId.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/UserName.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/sponsorstemp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'globals.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bottom_navigation_bar/Intro_Screens/logininfopage.dart' as info;
import 'package:bottom_navigation_bar/Intro_Screens/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

// int aaa=info.id;

// int ab=UserFormWidget.id

// int io = logininfo.idss;

// final ans = await UserSheetApi.getRowCount() + 1;

// void UserFormWidget() async {
//             final ok = await UserSheetApi.getRowCount() + 1;

//         }

// void UserFormWidget() async {
//           final ok = await UserSheetApi.getRowCount() + 1;
//           print(ok);
//           yes = ok;
//           print(yes);
//       }

// int y = info.logininfo.id;

enum SocialMedia {
  facebook,
  twitter,
  email,
  linkedin,
  whatsapp,
  instagram,
  youtube
}

class userprofilepage extends StatefulWidget {
  // User2? user2;
  // int? qwe;

  userprofilepage({Key? key}) : super(key: key);

  @override
  State<userprofilepage> createState() => _userprofilepageState();
}

// late int counter;
// String? _user;

class _userprofilepageState extends State<userprofilepage> {
  // final prefs = await SharedPreferences.getInstance();

  // late int counter;

  // void readFromShared() async{
  //   // print("not first");
  //   final prefs = await SharedPreferences.getInstance();
  //   // counter = prefs.getInt(0)!;
  //   final counter = prefs.getInt('counter') ?? 1;

  //   prefs.setInt('counter', 1);

  // }
  // late int counter;
  // int counter = 1;
  // static var counter = 1;

  getCouterValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int? count = pref.getInt('counterValue');
    return count;
  }

  setCounterValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('counterValue', counter);
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   checkForCounterValue();
  //   checkForIdValue();
  //   // checkForuserValue();
  // }

  // checkForCounterValue() async {
  //   int count = await getCouterValue() ?? 1;

  //   setState(() {
  //     counter = count;
  //   });
  // }

  //
  //

  // getIdValue() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   int? idn = pref.getInt('idValue');
  //   return idn;
  // }

  // setIdValue() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setInt('idValue', id);
  // }

  //
  //
  //
  //

  // getname() async {
  //   SharedPreferences prefi = await SharedPreferences.getInstance();
  //   String? nn = prefi.getString('name');
  //   return nn;
  // }

  // setname() async {
  //   SharedPreferences prefi = await SharedPreferences.getInstance();
  //   prefi.setString('name', ussa);
  // }

  // User2? user2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkForCounterValue();
    // getUsers();
    // initUser();
    // checkForIdValue();
    // checkForname();
    // checkForuserValue();
  }

  // @override
  // void didUpdateWidget (covariant UserFormWidget oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   initUser();
  // }

  // Future getUsers() async {
  //   // final user2 = await UserSheetApi.getById(309);

  //   // int interuwu = await UserSheetApi.getRowCount();
  //   // final user2 = await UserSheetApi.getById(interuwu);
  //   // int interuwu = await UserSheetApi.getRowCount();
  //   final user2 = await UserSheetApi.getById(await UserSheetApi.getRowCount());

  //   setState(() {
  //     this.user2 = user2;
  //   });
  // }

  // int? id;
  // id = user2 == null ? 99 : widget.user2!.id;
  // String? name;

  // Future initUser() async {
  //   final id = widget.user2 == null ? 99 : widget.user2!.id;
  //   final name = widget.user2 == null ? ' ' : widget.user2!.name;
  //   final email = widget.user2 == null ? ' ' : widget.user2!.email;
  //   final isBeginner = widget.user2 == null ? true : widget.user2!.isBeginner;
  // }

  // int? h = user2!.id;

  checkForCounterValue() async {
    int count = await getCouterValue() ?? 1;

    setState(() {
      counter = count;
    });
  }

  // checkForIdValue() async {
  //   int idn = await getIdValue();

  //   setState(() {
  //     var id = idn;
  //   });
  // }

  // checkForname() async {
  //   String nn = await getname();

  //   setState(() {
  //     ussa = nn;
  //   });
  // }

  void newImage() {
    setState(() {
      if (counter != 10) {
        counter++;
        setCounterValue();
      } else {
        counter = 1;
        setCounterValue();
      }
    });
  }

  // getuserValue() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   String? user = pref.getString('uservalue');
  //   return user;
  // }

  // setuserValue() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setString('uservalue', _user!);
  // }

  // checkForuserValue() async {
  //   String user = await getuserValue() ?? 'ok';

  //   setState((){
  //     _user=user;
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     child: CircularProgressIndicator(),
  //   );
  // }

  @override
  late final user = FirebaseAuth.instance.currentUser!;

  Widget build(BuildContext context) {
    // id = widget.user2 == null ? 70 : widget.user2!.id;
    // final int i=1;
    // final int? nqu = user2!.id;
    // int? nqu = user2 == null ? 32 : user2!.id;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 235, 255), //g

      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              // height: 425,
              height: MediaQuery.of(context).size.height * 0.53,
              // width: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      // top: MediaQuery.of(context).size.height * 0.08125,
                      top: MediaQuery.of(context).size.height * 0.07,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/i$counter.jpg'),
                      radius: MediaQuery.of(context).size.width * 0.225,
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // ShowUserName(),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 5,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          // user2!.name,
                          // 'xxx',
                          // 'Ayush Modi',
                          user.displayName!,
                          // uss,
                          // UserFormWidget.uss,
                          // ussa,
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   // height: MediaQuery.of(context).size.height * 0.0125,
                  //   height: 5,
                  // ),
                  ShowUserId(),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //       // top: MediaQuery.of(context).size.height * 0.01,
                  //       ),
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width - 5,
                  //     child: FittedBox(
                  //       fit: BoxFit.scaleDown,
                  //       child: Text(
                  //         // 'Ayush Modi',
                  //         // user.displayName!,
                  //         // 'BL-XO-$nqu',
                  //         user.uid,
                  //         // 'BLITH-XO-$io',
                  //         style: TextStyle(color: Colors.white, fontSize: 15),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0125,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurpleAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.0625),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    onPressed: newImage,
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.03,
                          bottom: MediaQuery.of(context).size.width * 0.03,
                        ),
                        // padding: EdgeInsets.all(
                        //   MediaQuery.of(context).size.width * 0.01,
                        // ),
                        child: Text(
                          'Change Avatar',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
                // left: 75,
                left: MediaQuery.of(context).size.width * 0.1875),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          MediaQuery.of(context).size.height * 0.1),
                      bottomLeft: Radius.circular(
                          MediaQuery.of(context).size.height * 0.1),
                    ),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => contactus()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.0625,
                child: Center(
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),

          // Padding(
          //   padding: EdgeInsets.only(
          //     right: MediaQuery.of(context).size.width * 0.1875,
          //   ),
          //   child: TextButton(
          //     style: ButtonStyle(
          //       backgroundColor: MaterialStateProperty.all(Colors.indigo),
          //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //         RoundedRectangleBorder(
          //           borderRadius: BorderRadius.only(
          //             topRight: Radius.circular(MediaQuery.of(context).size.height * 0.1),
          //             bottomRight: Radius.circular(MediaQuery.of(context).size.height * 0.1),
          //           ),
          //           side: BorderSide(color: Colors.white),
          //         ),
          //       ),
          //     ),
          //     onPressed: () {},
          //     child: Center(
          //       child: Container(
          //         height: MediaQuery.of(context).size.height * 0.0625,
          //         child: Center(
          //           child: Text(
          //             'Campus Abassador',
          //             style: TextStyle(
          //               fontSize: 30,
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.015,
          // ),

          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.1875,
            ),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.height * 0.1),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.height * 0.1),
                    ),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    // context, MaterialPageRoute(builder: (context) => spons2()));
                    context,
                    MaterialPageRoute(builder: (context) => spons()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.0625,
                width: MediaQuery.of(context).size.width * 0.625,
                child: Center(
                  child: Text(
                    'Sponsors',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),

          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1875,
            ),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyan),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          MediaQuery.of(context).size.height * 0.1),
                      bottomLeft: Radius.circular(
                          MediaQuery.of(context).size.height * 0.1),
                    ),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => develop()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.0625,
                width: MediaQuery.of(context).size.width * 0.625,
                child: Center(
                  child: Text(
                    'Developers',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),

          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.1875,
            ),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.height * 0.1),
                      bottomRight: Radius.circular(
                          MediaQuery.of(context).size.height * 0.1),
                    ),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ourteam(),
                    ));
              },
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.0625,
                  child: Center(
                    child: Text(
                      'Our Team',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(left: 75),
          //   child: Container(
          //     margin: EdgeInsets.only(top: 16),
          //     height: 75,
          //     width: MediaQuery.of(context).size.width * 0.625,
          //     child: Center(
          //       child: Text(
          //         'Sponsors',
          //         style: TextStyle(
          //           fontSize: 30,
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //     decoration: BoxDecoration(
          //       color: Colors.green,
          //       borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(MediaQuery.of(context).size.height * 0.1),
          //         bottomLeft: Radius.circular(MediaQuery.of(context).size.height * 0.1),
          //       ),
          //     ),
          //   ),
          // ),

          SizedBox(
            // height: MediaQuery.of(context).size.height * 0.0625,
            height: MediaQuery.of(context).size.height * 0.05,
            // height: MediaQuery.of(context).size.height * 0.06,
          ),

          // ClipPath(
          //   clipper: CustomClipPath2(),
          //   child: Container(
          //     height: 425,
          //     width: 400,
          //     decoration: BoxDecoration(
          //       color: Colors.deepPurpleAccent,
          //     ),
          //   ),
          // )

          ClipPath(
            clipper: ProsteBezierCurve(
              position: ClipPosition.top,
              list: [
                BezierCurveSection(
                  start: Offset(400, 30),
                  top: Offset(400 / 2, 0),
                  end: Offset(0, 30),
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.0625),
              // Image.asset('images/Mt. B 1.png', height: 300,),
              // child: Image.asset('images/Mt. B 1.png', height: 100,),
              // child: Image.asset('images/Capture.PNG', height: 100,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // buildSocialButtons(),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.2225,
                        right: MediaQuery.of(context).size.width * 0.2225,
                        bottom: MediaQuery.of(context).size.height * 0.0375),
                    child: Image.asset(
                      'images/Group 22.png',
                    ),
                    // child: Image.asset('images/Group 22 (1).png'),
                    // child: SvgPicture.asset('images/Group 22 (1) (1).svg'),
                  ),
                  buildSocialButtons(),
                ],
              ),
              color: Colors.deepPurpleAccent,
              // height: 375,
              height: MediaQuery.of(context).size.height * 0.46875,
            ),
          )
        ],
      ),
    );
  }

  // Widget buildSocialButtons() => Card(
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [

  //       buildSocialButton(
  //         icon: FontAwesomeIcons.
  //       )

  //   ]),
  // );

  Widget buildSocialButtons() => Padding(
        padding: EdgeInsets.only(
          // left: 65,
          left: MediaQuery.of(context).size.width * 0.1825,
          right: MediaQuery.of(context).size.width * 0.1825,
          top: MediaQuery.of(context).size.height * 0.00625,
          bottom: MediaQuery.of(context).size.height * 0.00625,
        ),
        child: Card(
          color: Colors.white,
          elevation: MediaQuery.of(context).size.width * 0.025,
          child: Padding(
            // padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.0225,
                top: MediaQuery.of(context).size.width * 0.02,
                bottom: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSocialButton(
                    icon: FontAwesomeIcons.instagram,
                    color: Colors.pink,
                    onClicked: () => share1(SocialMedia.instagram)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                buildSocialButton(
                    icon: FontAwesomeIcons.twitter,
                    color: Colors.blue,
                    onClicked: () => share1(SocialMedia.twitter)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                buildSocialButton(
                    icon: FontAwesomeIcons.youtube,
                    color: Colors.red,
                    onClicked: () => share1(SocialMedia.youtube)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                buildSocialButton(
                    icon: FontAwesomeIcons.facebook,
                    color: Colors.blue,
                    onClicked: () => share1(SocialMedia.facebook)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                buildSocialButton(
                    icon: FontAwesomeIcons.linkedin,
                    color: Colors.blue,
                    onClicked: () => share1(SocialMedia.linkedin)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                // buildSocialButton(
                //     icon: FontAwesomeIcons.whatsapp,
                //     color: Colors.green,
                //     onClicked: () => share1(SocialMedia.whatsapp)),
                // SizedBox(
                //   width: 10,
                // ),
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
          ),
        ),
      );

  Widget buildSocialButton({
    required IconData icon,
    Color? color,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.0875,
          height: MediaQuery.of(context).size.height * 0.04375,
          child: Center(
              child: FaIcon(
            icon,
            color: color,
            size: 35,
          )),
        ),
        onTap: onClicked,
      );

  Future share1(SocialMedia socialPlatform) async {
    final subject = 'Hello';
    final text = 'My';
    final urlShare = Uri.encodeComponent(
        'https://www.youtube.com/channel/UCpdqWQeOuk1-p1t8r9Ee_VA');
    var whatsapp1 = "+919714649511";

    final urls = {
      SocialMedia.facebook: 'https://www.facebook.com/Blithchron/',
      SocialMedia.twitter: 'https://twitter.com/blithchroniitgn',
      SocialMedia.email:
          'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
      SocialMedia.linkedin:
          'https://www.linkedin.com/company/blithchron-iit-gandhinagar/mycompany/',
      // SocialMedia.linkedin:
      //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
      // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
      SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp1&text=$subject',
      SocialMedia.instagram: 'https://www.instagram.com/blithchron_iitgn/',
      SocialMedia.youtube:
          'https://www.youtube.com/channel/UCpdqWQeOuk1-p1t8r9Ee_VA',
    };

    final url = urls[socialPlatform]!;

    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.lineTo(0, h - 100);
    path.quadraticBezierTo(w * 0.5, h, w, h - 100);
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

// class CustomClipPath2 extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double w = size.width;
//     double h = size.height;

//     final path = Path();

//     path.quadraticBezierTo(0, 100, w * 0.5, 0);
//     path.lineTo(w, 100);
//     path.lineTo(w, h);
//     path.lineTo(0, h);
//     path.close();

//     // path.quadraticBezierTo(w * 0.5, h, w, h - 100);
//     // path.lineTo(w, 0);
//     // path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
