// import 'dart:js_util';

import 'package:bottom_navigation_bar/Intro_Screens/user.dart';
import 'package:bottom_navigation_bar/auth/signin.dart';
import 'package:bottom_navigation_bar/bee.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/globals.dart';
import 'package:shared_preferences/shared_preferences.dart';

// String uss = 'a';
late String ussa;

class UserFormWidget extends StatefulWidget {
  final ValueChanged<User2> onSavedUser;
  // static String uss = 'a';

  const UserFormWidget({
    Key? key,
    required this.onSavedUser,
  }) : super(key: key);

  // const UserFormWidget({super.key});

  @override
  State<UserFormWidget> createState() => _UserFormWidgetState();
}

class _UserFormWidgetState extends State<UserFormWidget> {
  final user = FirebaseAuth.instance.currentUser!;
  final formKey = GlobalKey<FormState>();
  late TextEditingController controllerColState;
  late TextEditingController controllerColCity;
  late TextEditingController controllerColName;
  late TextEditingController controllerAge;
  late TextEditingController controllerGender;
  late TextEditingController controllerNum;
  // late bool isBeginner;

  getname() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? nn = pref.getString('name');
    return nn;
  }

  setname() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('name', ussa);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initUser();

    checkForname();
    // checkForuserValue();
  }

  checkForname() async {
    String nn = await getname();

    setState(() {
      ussa = nn;
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   initUser();
  // }

  void initUser() {
    // controllerName = TextEditingController();
    // controllerEmail = TextEditingController()
    controllerColState = TextEditingController();
    controllerColCity = TextEditingController();
    controllerColName = TextEditingController();
    controllerAge = TextEditingController();
    controllerGender = TextEditingController();
    controllerNum = TextEditingController();

    // this.isBeginner = true;
  }
  // color: Color.fromARGB(255, 118, 98, 0),
  // color: Color.fromARGB(255, 112, 120, 0),

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildColState(),
          const SizedBox(
            height: 16,
          ),
          buildColCity(),
          const SizedBox(
            height: 16,
          ),
          buildColName(),
          const SizedBox(
            height: 16,
          ),
          buildAge(),
          const SizedBox(
            height: 16,
          ),
          buildGender(),
          const SizedBox(
            height: 16,
          ),
          buildNum(),
          const SizedBox(
            height: 16,
          ),
          buildSubmit(),
          // const SizedBox(
          //   height: 200,
          // ),
          // Image.asset('images/hills.png')
        ],
      ),
    );
  }

  Widget buildColState() => TextFormField(
        controller: controllerColState,
        decoration: InputDecoration(
          labelText: 'Enter College State',
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter College State' : null,
      );
  Widget buildColCity() => TextFormField(
        controller: controllerColCity,
        decoration: InputDecoration(
          labelText: 'Enter College City',
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter College City' : null,
      );

  Widget buildColName() => TextFormField(
        controller: controllerColName,
        decoration: InputDecoration(
          labelText: 'Enter College Name',
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            // value != null && !value.contains('@') ? 'Enter Email' : null,
            value != null && value.isEmpty ? 'Enter College Name' : null,
      );

  Widget buildAge() => TextFormField(
        controller: controllerAge,
        decoration: InputDecoration(
          labelText: 'Enter Age',
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Age' : null,
      );

  Widget buildGender() => TextFormField(
        controller: controllerGender,
        decoration: InputDecoration(
          labelText: 'Enter Gender',
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Gender' : null,
      );

  Widget buildNum() => TextFormField(
        controller: controllerNum,
        decoration: InputDecoration(
          labelText: 'Enter Mobile Number',
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Mobile Number' : null,
      );

  // Widget buildBeginner() => SwitchListTile(F

  Widget buildSubmit() => ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            // Colors.deepPurpleAccent,
            Colors.indigo,
            // Colors.teal,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                // MediaQuery.of(context).size.width * 0.0625,
                MediaQuery.of(context).size.width * 0.04,
              ),
              side: BorderSide(color: Colors.white),
            ),
          ),
        ),
        // child: Text('Login', style: TextStyle(fontSize: 18),),
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.width * 0.015,
              // left: MediaQuery.of(context).size.width * 0.108,
              // right: MediaQuery.of(context).size.width * 0.108,
            ),
            // padding: EdgeInsets.all(
            //   MediaQuery.of(context).size.width * 0.01,
            // ),
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        onPressed: () {
          final form = formKey.currentState!;
          final isValid = form.validate();
          // ussa = controllerName.text;
          // UserFormWidget.uss = controllerName.text;
          if (isValid) {
            final userx = User2(
              fireuid: user.uid,
              name: user.displayName!,
              email: user.email!,
              colstate: controllerColState.text,
              colcity: controllerColCity.text,
              colname: controllerColName.text,
              age: controllerAge.text,
              gender: controllerGender.text,
              mobnum: controllerNum.text,
              // fireuid: user.uid,
            );
            widget.onSavedUser(userx);
            Navigator.of(this.context).pushReplacement(
              MaterialPageRoute(
                builder: (context) {
                  return MyApp2();
                },
              ),
            );
          }
          //
          //
          //
          //
          // signInWithGoogle().then((result) {
          //   if (result != null) {
          // Navigator.of(this.context).pushReplacement(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return MyApp2();
          //     },
          //   ),
          // );
          //   }
          // });
        },
      );
}

// final uss = controllerName;
