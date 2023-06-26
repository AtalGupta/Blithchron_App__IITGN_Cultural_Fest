

import 'dart:async';

import 'package:bottom_navigation_bar/Home_Page/homepage.dart';
import 'package:bottom_navigation_bar/Intro_Screens/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Intro_Screens/demo.dart';
import 'bee.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;
  @override
  void initState() {
    super.initState();
    //  Firebase.initializeApp().whenComplete(() { 
    //   // print("completed");
    //   setState(() {initializeUser();
    // navigateUser();});  
    // });
    initializeUser();
    navigateUser();
  }

  Future initializeUser() async {
    WidgetsFlutterBinding.ensureInitialized();
    // final colorA = LinearGradient(colors: [Colors.indigo, Colors.pink]);
    // await Firebase.initializeApp();
    // ignore: await_only_futures
    final User? firebaseUser =  FirebaseAuth.instance.currentUser;
    // print(User);
    await firebaseUser?.reload();
    // print(1);
    // print(_user);
    // print(1);
    _user =(_auth.currentUser);
    // if (_)
    print(_user);
// get User authentication status here
  } 

  navigateUser() async {
    // checking whether user already loggedIn or not
    if (_auth.currentUser != null) {
      // &&  FirebaseAuth.instance.currentUser.reload() != null
      Timer(
        Duration(seconds: 2),
            () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) =>
                    MyApp2()),
                (Route<dynamic> route) => false),
      );
    } else {
      Timer(Duration(seconds: 2),
          ()=> Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (context) =>
                      App()),
                  (Route<dynamic> route) => false),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: (BuildContext context, Widget? child) {
      //   return MediaQuery(
      //     data: MediaQuery.of(context).copyWith(textScaleFactor: 2.0),
      //     child: child!,
      //   );
      // },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Image.asset('images/Frame 71.png'),
          ),
        ),
      ),
    );
  }
}