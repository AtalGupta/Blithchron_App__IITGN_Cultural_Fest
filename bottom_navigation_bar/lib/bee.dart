import 'dart:async';

import 'package:bottom_navigation_bar/Home_Page/homepage.dart';
import 'package:bottom_navigation_bar/Intro_Screens/logininfopage.dart';
import 'package:bottom_navigation_bar/Intro_Screens/user.dart';
import 'package:bottom_navigation_bar/Intro_Screens/userform.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/globals.dart';
import 'package:bottom_navigation_bar/dog_animation/demo.dart';
import 'package:bottom_navigation_bar/o/sp.dart';
import 'package:bottom_navigation_bar/photo_gallery/photo_gallery.dart';
import 'package:bottom_navigation_bar/storepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:bottom_navigation_bar/HomePage.dart';
import 'package:bottom_navigation_bar/EventsPage.dart';
import 'package:bottom_navigation_bar/Map.dart';
import 'package:bottom_navigation_bar/Store.dart';
import 'package:bottom_navigation_bar/ProfilePage.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Events_Page/eventpage.dart';
import 'Intro_Screens/users_sheet_api.dart';
import 'Spalsh_Screen/main.dart';
import 'User_Profile_Page/userprofilepage.dart';

void main() {
  runApp(MyApp2());
}

late String? fireuid;

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

bool canback = false;

class _MyApp2State extends State<MyApp2> {
  final user = FirebaseAuth.instance.currentUser!;
  final formKey = GlobalKey<FormState>();
  late TextEditingController controllerName;
  late TextEditingController controllerEmail;
  late bool isBeginner;
  int index = 0;

  getCouterValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int? count = pref.getInt('counterValue');
    return count;
  }

  setCounterValue() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('counterValue', counter);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkForCounterValue();
    fireuser();
  }

  void fireuser() {
    UserFormWidget(
      onSavedUser: (user2) async {
        // id = await UserSheetApi.getRowCount() + 1;
        fireuid = 'oooo';
        // logininfo.idss=id;
        final newUser = user2.copy(fireuid: fireuid);
        await UserSheetApi.insert([newUser.toJson()]);
      },
    );
  }

  // fireuser() {
  //   final form = formKey.currentState!;
  //         final isValid = form.validate();
  //         ussa = controllerName.text;
  //         // UserFormWidget.uss = controllerName.text;
  //         if (isValid) {
  //           final userx = User2(
  //             fireuid: user?.uid,
  //             name: controllerName.text,
  //             email: controllerEmail.text,
  //             isBeginner: isBeginner,
  //             // fireuid: user.uid,
  //           );
  //           widget.onSavedUser(userx);
  //         }
  // }

  checkForCounterValue() async {
    int count = await getCouterValue() ?? counter;

    setState(() {
      counter = count;
    });
  }

  // Future<bool> _onWillPop() async {
  //   if (canback == true) {
  //     SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  //   } else {
  //     // index=0;
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) {
  //           // return LoginPage();
  //           return homepage();
  //         },
  //       ),
  //     );
  //   }

  //   Timer(Duration(seconds: 2), () {
  //     setState(() {
  //       canback = false;
  //     });
  //   });
  //   canback = true;
  //   return true;
  // }

  @override
  Widget build(BuildContext context) {
    // precacheImage(AssetImage('images/shrey.jpg'), context);
    precacheImage(AssetImage('images/yashraj-01.jpg',), context);
    precacheImage(AssetImage('images/i$counter.jpg'), context);
    precacheImage(AssetImage("images/DSC_06086.jpg"), context);
    // precacheImage(AssetImage("images/DSC_2414.JPG"), context);

    final items = <Widget>[
      Icon(
        Icons.home_outlined,
        // CupertinoIcons.house_alt,
        // CupertinoIcons.home,
        // CupertinoIcons.home,
        size: 30,
      ),
      Icon(
        // Icons.storage_outlined,
        CupertinoIcons.list_bullet,
        size: 30,
      ),
      Icon(
        // Icons.map_outlined,
        // CupertinoIcons.map,
        // CupertinoIcons.color_filter,
        // CupertinoIcons.collections,
        Icons.collections_outlined,
        // CupertinoIcons.app_badge,
        // CupertinoIcons.selection_pin_in_out,
        // CupertinoIcons.wand_stars_inverse,
        // CupertinoIcons.pano,
        // CupertinoIcons.perspective,
        // CupertinoIcons.photo,
        // CupertinoIcons.photo_fill,
        // CupertinoIcons.photo_fill_on_rectangle_fill,
        // CupertinoIcons.photo_on_rectangle,

        size: 30,
      ),
      Icon(
        // Icons.store_outlined,
        // CupertinoIcons.cart,
        CupertinoIcons.map,

        size: 30,
      ),
      Icon(
        // Icons.person_outline_rounded,
        CupertinoIcons.person,
        // CupertinoIcons.profile_circled,
        size: 30,
      ),
    ];

    final screens = [
      homepage(),
      eventpage(),
      // Map(),
      PhotoGallery(),
      // store(),
      // storepage(),
      MainExample(),
      userprofilepage(),
    ];

    // final colorA = LinearGradient(colors: [Colors.indigo, Colors.pink]);

    return MaterialApp(
      builder: (BuildContext context, Widget? child) {
        // precacheImage(AssetImage('images/shrey.jpg'), context);
        // precacheImage(AssetImage('images/i$counter.jpg'), context);
        // precacheImage(AssetImage("images/DSC_06086.jpg"), context);
        // precacheImage(AssetImage("images/DSC_2414.JPG"), context);

        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Circular',
      ),
      // home: xx(),
      home: Container(
        // color: Colors.pink,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.indigo,
        //       Colors.pink,
        //     ],
        //   ),
        // ),
        child: SafeArea(
          top: false,
          child: ClipRect(
            child: Scaffold(
              extendBody: true,
              body: screens[index],
              // backgroundColor: Color.fromARGB(255, 251, 247, 247),
              // backgroundColor: Color.fromARGB(255, 248, 251, 247),//g
              // backgroundColor: Color.fromARGB(255, 242, 246, 241),
              // backgroundColor: Color.fromARGB(255, 227, 230, 227),
              backgroundColor: Color.fromARGB(255, 230, 230, 227),//g
              bottomNavigationBar: CurvedNavigationBar(
                height: 52,
                backgroundColor: Colors.transparent,
                items: items,
                animationDuration: Duration(
                  milliseconds: 300,
                ),
                onTap: (index) => setState(() => this.index = index),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Future<bool> _onWillPop() async {

  //   if (canback == true) {
  //     SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  //   }else{
  //     setState(() {
  //       index=0;
  //     });
  //   }

  //   Timer(Duration(seconds: 2), () {
  //     setState(() {
  //       canback = false;
  //     });
  //   });
  //   canback = true;
  //   return true;
  // }

  // Future<bool> systemBackButtonPressed() async {
  //   if (navigatorKeys[profileController.selectedIndex.value]!
  //       .currentState!
  //       .canPop()) {
  //     navigatorKeys[profileController.selectedIndex.value]!.currentState!.pop(
  //         navigatorKeys[profileController.selectedIndex.value]!.currentContext);
  //   } else {
  //     SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
  //   }
  //   return true;
  // }
}
