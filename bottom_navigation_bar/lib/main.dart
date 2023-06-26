import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bottom_navigation_bar/Home_Page/homepage.dart';
import 'package:bottom_navigation_bar/Intro_Screens/demo.dart';
import 'package:bottom_navigation_bar/Intro_Screens/env.dart';
import 'package:bottom_navigation_bar/Intro_Screens/users_sheet_api.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/globals.dart';
import 'package:bottom_navigation_bar/o/sp.dart';
// import 'package:bottom_navigation_bar/pagescreens.dart';
import 'package:bottom_navigation_bar/splashscreen.dart';
import 'package:bottom_navigation_bar/storepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:bottom_navigation_bar/HomePage.dart';
import 'package:bottom_navigation_bar/EventsPage.dart';
import 'package:bottom_navigation_bar/Map.dart';
import 'package:bottom_navigation_bar/Store.dart';
import 'package:bottom_navigation_bar/ProfilePage.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Events_Page/eventpage.dart';
import 'Intro_Screens/logininfopage.dart';
import 'Spalsh_Screen/main.dart';
import 'User_Profile_Page/userprofilepage.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'auth/signin.dart';
import 'bee.dart';

/*void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'FaceBase',
    routes: routes,
    home: SplashScreen(),
  ));
}*/
const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.high,
    playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('A bg message just showed up :  ${message.messageId}');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await UserSheetApi.init();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static String _pkg = "gooey_edge";
  static String? get pkg => Env.getPackage(_pkg);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  @override
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
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   RemoteNotification? notification = message.notification;
    //   AndroidNotification? android = message.notification?.android;
    //   if (notification != null && android != null) {
    //     flutterLocalNotificationsPlugin.show(
    //         notification.hashCode,
    //         notification.title,
    //         notification.body,
    //         NotificationDetails(
    //           android: AndroidNotificationDetails(
    //             channel.id,
    //             channel.name,
    //             channelDescription: channel.description,
    //             color: Colors.blue,
    //             playSound: true,
    //             icon: '@mipmap/ic_launcher',
    //           ),
    //         ));
    //   }
    // });

    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    //   print('A new onMessageOpenedApp event was published!');
    //   RemoteNotification? notification = message.notification;
    //   AndroidNotification? android = message.notification?.android;
    //   if (notification != null && android != null) {
    //     showDialog(
    //         context: context,
    //         builder: (_) {
    //           return AlertDialog(
    //             title: Text(notification.title!),
    //             content: SingleChildScrollView(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [Text(notification.body!)],
    //               ),
    //             ),
    //           );
    //         });
    //   }
    // });
  }

  // void showNotification() {
  //   // setState(() {
  //   //   _counter++;
  //   // });
  //   flutterLocalNotificationsPlugin.show(
  //       0,
  //       "Testing",
  //       "How you doin ?",
  //       NotificationDetails(
  //           android: AndroidNotificationDetails(channel.id, channel.name,
  //               channelDescription: channel.description,
  //               importance: Importance.high,
  //               color: Colors.blue,
  //               playSound: true,
  //               icon: '@mipmap/ic_launcher')));
  // }

  checkForCounterValue() async {
    int count = await getCouterValue() ?? counter;

    setState(() {
      counter = count;
    });
  }

  Widget build(BuildContext context) {
    // precacheImage(AssetImage('images/shrey.jpg'), context);
    precacheImage(AssetImage('images/yashraj-01.jpg',), context);
    precacheImage(AssetImage('images/i$counter.jpg'), context);
    precacheImage(AssetImage("images/DSC_06086.jpg"), context);
    // precacheImage(AssetImage( "images/DSC_2414.JPG"), context);

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
        CupertinoIcons.map,
        size: 30,
      ),
      Icon(
        // Icons.store_outlined,
        CupertinoIcons.cart,
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
      Map(),
      // store(),
      storepage(),
      userprofilepage(),
    ];

    // final colorA = LinearGradient(colors: [Colors.indigo, Colors.pink]);

    return GetMaterialApp(
      // builder: (BuildContext context, Widget? child) {
      //   return MediaQuery(
      //     data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
      //     child: homepage(),
      //   );
      // },
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Circular'),
      // home: xx(),
      // home: pgsc(),
      // home: GooeyEdgeDemo(),
      // home: store()
      // home: MyApp2()
      home: SplashScreen(),
      // home: logininfo(),
      /*AnimatedSplashScreen.withScreenFunction(
        splash: 'images/splash.png',
        screenFunction: () async{
          return GooeyEdgeDemo();

        },

        splashTransition: SplashTransition.rotationTransition,
        pageTransitionType: PageTransitionType.scale,
      )*/ /*AnimatedSplashScreen(
        // curve: Curves.easeInCirc,
        backgroundColor: Colors.black,
        // backgroundColor: Colors.amber,
        // splash: Icons.home,
        // splash: Container(),
        // splash: SvgPicture.asset('images/Frame 7.svg', height: 400, width: 400,),
        // splash: Container(
        //   child: SvgPicture.asset(
        //     'images/Frame 7.svg',
        //   ),
        // ),
        splashIconSize: 185,
        splash: Container(
          child: Image.asset('images/Frame 71.png'),
        ),
        duration: 3000,
        animationDuration: Duration(seconds: 1),
        splashTransition: SplashTransition.fadeTransition,
        // splashTransition: SplashTransition.scaleTransition,
        // splashTransition: SplashTransition.sizeTransition,
        // splashTransition: SplashTransition.slideTransition,
        // splashTransition: SplashTransition.decoratedBoxTransition,
        // pageTransitionType: PageTransitionType.scale,



        pageTransitionType: PageTransitionType.bottomToTop,
          function: navigationToNextPage()


      ),*/
      // home: Container(
      //   // color: Colors.pink,
      //   // decoration: BoxDecoration(
      //   //   gradient: LinearGradient(
      //   //     colors: [
      //   //       Colors.indigo,
      //   //       Colors.pink,
      //   //     ],
      //   //   ),
      //   // ),
      //   child: SafeArea(
      //     top: false,
      //     child: ClipRect(
      //       child: Scaffold(
      //         extendBody: true,
      //         body: screens[index],
      //         backgroundColor: Colors.pink,
      //         bottomNavigationBar: CurvedNavigationBar(
      //           height: 49,
      //           backgroundColor: Colors.transparent,
      //           items: items,
      //           animationDuration: Duration(
      //             milliseconds: 300,
      //           ),
      //           onTap: (index) => setState(() => this.index = index),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}/*
navigationToNextPage() {
  signInWithGoogle().then((result) {
    if (result != null) {
      nextscreen: MyApp2();
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return MyApp2();
          },
        ),
      );
    }
    else {
      nextscreen: GooeyEdgeDemo();
      Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) {
              return GooeyEdgeDemo();
            }
        ),);
    }
  });}


*/