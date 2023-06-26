import 'package:bottom_navigation_bar/Intro_Screens/user.dart';
import 'package:bottom_navigation_bar/Intro_Screens/userform.dart';
import 'package:bottom_navigation_bar/Intro_Screens/users_sheet_api.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/globals.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:proste_bezier_curve/utils/type/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'users_sheet_api.dart';

// int idss = 1;

late int id;

class logininfo extends StatefulWidget {
  logininfo({super.key});
  // static int idss=1;
  // static late int id;

  // logininfo({Key? key, required this.id}) : super(key: key);

  @override
  State<logininfo> createState() => _logininfoState();
}

class _logininfoState extends State<logininfo> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getUsers();
  //   initUser();
  //   // checkForIdValue();
  //   // checkForname();
  //   // checkForuserValue();
  // }
  // getIdValue() async {
  //   SharedPreferences prefi = await SharedPreferences.getInstance();
  //   int? idn = prefi.getInt('idValue');
  //   return idn;
  // }

  // setIdValue() async {
  //   SharedPreferences prefi = await SharedPreferences.getInstance();
  //   prefi.setInt('idValue', id);
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   checkForIdValue();
  //   // checkForuserValue();
  // }

  // checkForIdValue() async {
  //   int idn = await getIdValue();

  //   setState(() {
  //     id = idn;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 174, 244, 228),
        // backgroundColor: Color.fromARGB(255, 198, 243, 232),
        // backgroundColor: Color.fromARGB(255, 216, 253, 244),
        // backgroundColor: Color.fromARGB(255, 230, 255, 249),
        // backgroundColor: Color.fromARGB(255, 255, 255, 230),
        // backgroundColor: Color.fromARGB(255, 255, 250, 230),
        // backgroundColor: Color.fromARGB(255, 255, 247, 230),
        // backgroundColor: Color.fromARGB(255, 255, 245, 230),
        // backgroundColor: Color.fromARGB(255, 245, 255, 230),
        // backgroundColor: Color.fromARGB(255, 238, 255, 230),
        // backgroundColor: Color.fromARGB(255, 234, 255, 230),//g
        // backgroundColor: Color.fromARGB(255, 230, 255, 230),
        // backgroundColor: Color.fromARGB(255, 230, 255, 236),
        // backgroundColor: Color.fromARGB(255, 230, 255, 240),//g
        // backgroundColor: Color.fromARGB(255, 230, 255, 246),//g
        // backgroundColor: Color.fromARGB(255, 230, 255, 254),
        // backgroundColor: Color.fromARGB(255, 230, 252, 255),
        backgroundColor: Color.fromARGB(255, 230, 248, 255),
        // backgroundColor: Color.fromARGB(255, 230, 235, 255), //g
        // backgroundColor: Color.fromARGB(255, 230, 230, 255),//g
        // backgroundColor: Color.fromARGB(255, 235, 230, 255),
        // backgroundColor: Color.fromARGB(255, 255, 230, 236),

        body: SingleChildScrollView(
          // alignment: Alignment.center,
          // padding: EdgeInsets.all(32),
          child: Column(
            children: [
              // SizedBox(
              //   height: 60,
              // ),
              // Container(
              //     // color: Colors.blue,
              //     decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 60, 158, 207),
              //       borderRadius: BorderRadius.circular(
              //         MediaQuery.of(context).size.width * 0.025,
              //       ),
              //     ),
              //     padding:
              //         EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              //     child: Text(
              //       'Tell us about yourself',
              //       style: TextStyle(fontSize: 18, fontFamily: 'Circular', color: Colors.white),
              //     )),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20,
                  // top: 20,
                  // top: 90,
                  top: 80,
                  // top: 120,
                ),
                child: UserFormWidget(
                  onSavedUser: (user) async {
                    id = await UserSheetApi.getRowCount() + 1;
                    // logininfo.idss=id;
                    final newUser = user.copy(id: id);
                    await UserSheetApi.insert([newUser.toJson()]);
                  },
                ),
              ),
              // SizedBox(
              //   // height: 90,
              //   height: 40,
              // ),
              SizedBox(
                height: 20,
              ),
              // Image.asset('images/hills.png')
              // Image.asset(
              //   'images/Group 22.png',
              //   height: 150,
              // ),

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
                    // top: MediaQuery.of(context).size.height * 0.0625,
                    top: 20,
                  ),
                  // Image.asset('images/Mt. B 1.png', height: 300,),
                  // child: Image.asset('images/Mt. B 1.png', height: 100,),
                  // child: Image.asset('images/Capture.PNG', height: 100,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // buildSocialButtons(),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.19,
                          right: MediaQuery.of(context).size.width * 0.19,
                          bottom: MediaQuery.of(context).size.height * 0.0375,
                        ),
                        child: Image.asset(
                          'images/Group 22.png',
                        ),
                        // child: Image.asset('images/Group 22 (1).png'),
                        // child: SvgPicture.asset('images/Group 22 (1) (1).svg'),
                      ),
                      // buildSocialButtons(),
                    ],
                  ),
                  color: Colors.deepPurpleAccent,
                  // height: 375,
                  // height: MediaQuery.of(context).size.height * 0.46875,
                  height: 220,
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),

              // child: ElevatedButton(
              //   child: Text('Login'),
              //   onPressed: () async {
              //     final user = User(
              //       id: 1,
              //       name: 'Paul',
              //       email: 'www',
              //       isBeginner: true,
              //     );
              //     await UserSheetApi.insert([user.toJson()]);
              //   },
              // ),
            ],
          ),
        ));
  }
}
