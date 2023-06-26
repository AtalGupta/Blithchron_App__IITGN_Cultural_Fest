import 'package:bottom_navigation_bar/Intro_Screens/user.dart';
import 'package:bottom_navigation_bar/Intro_Screens/users_sheet_api.dart';
import 'package:bottom_navigation_bar/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'globalas.dart';

// int? b;

class waitingwidget extends StatefulWidget {
  wlobby? Wlobby;

  waitingwidget({super.key});

  @override
  State<waitingwidget> createState() => _waitingwidgetState();
}

class _waitingwidgetState extends State<waitingwidget> {
  late final user = FirebaseAuth.instance.currentUser!;
  int? b;

  bool flag = false;
  int i = 1;
  int l = 7;
  wlobby? Wlobby;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsers();
    // checkForIdValue();
    // checkForname();
    // checkForuserValue();
  }

  // @override
  // void didUpdateWidget(covariant oldWidget){
  //   super.didUpdateWidget(oldWidget);

  //   getUsers();
  // }

  Future getUsers() async {
    wlobby? wlob;
    // final user2 = await UserSheetApi.getById(309);

    // int uid = await UserSheetApi.getRowCountxx();
    final jjo = await UserSheetApi.getById4(user.uid);
    // final user2 = await UserSheetApi.getById(interuwu);
    int last = await UserSheetApi.getRowCount2();

    for (; i <= last; i++) {
      wlob = await UserSheetApi.getById2(i);
      if (wlob?.userid == jjo?.id) {
        // setState(() {
        //   this.flag = true;
        // });
        flag = true;
        // setState(() {
        //   this.b = i;
        // });
        // b = i;
        // flag = true;
        break;
      }
    }
    for (; l < 10; l++) {
      print(l);
      // l++;
    }

    // final fwlobby = await UserSheetApi.getById2(1);

    setState(() {
      // this.Wlobby = fwlobby;
      this.Wlobby = wlob;
    });
    return Container(color: Colors.black,height: 100,);

    // if (1==1){
    //   flag=true;
    // }
  }

  void showNotification() {
    // setState(() {
    //   _counter++;
    // });
    if (noti == false) {
      setState(() {
        noti = true;
      });
      flutterLocalNotificationsPlugin.show(
          0,
          "Yay!",
          "The wait is over. \'Tis your turn now. Go have a blast!",
          NotificationDetails(
              android: AndroidNotificationDetails(channel.id, channel.name,
                  channelDescription: channel.description,
                  importance: Importance.high,
                  color: Colors.blue,
                  playSound: true,
                  icon: '@mipmap/ic_launcher')));
    }
  }

  void showNotification2() {
    // setState(() {
    //   _counter++;
    // });
    if (noti2 == false) {
      noti2 = true;
      flutterLocalNotificationsPlugin.show(
          0,
          "Succefully Registered!",
          "Please wait. You are in the queue for your turn. Watch out this space for updates.",
          NotificationDetails(
              android: AndroidNotificationDetails(channel.id, channel.name,
                  channelDescription: channel.description,
                  importance: Importance.high,
                  color: Colors.blue,
                  playSound: true,
                  icon: '@mipmap/ic_launcher')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final int? c = Wlobby?.number;
    int u = i - 1;
    if (flag == false) {
      return Container(
        decoration: BoxDecoration(
            // color: Colors.blueGrey,
            color: Color.fromARGB(255, 0, 136, 122),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        margin: EdgeInsets.only(
          top: 80,
          left: 30,
          right: 30,
        ),
        child: Center(
          child: Text(
            'Your queue in the events you \nregistered for will show here.',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      );
      // return Container(
      //   margin: EdgeInsets.only(top: 50),
      //   child: Text('Your not in any waiting lobby $i n $l ff $b gg $c'),
      // );
      // return Container(
      //   height: 30,
      //   child: Text('Your not in any waiting lobby $i n $l ff $b gg $c'),
      // );
    } else {
      if (i == 1) {
        showNotification();
        return Container(
          decoration: BoxDecoration(
              // color: Color.fromARGB(255, 118, 106, 0),
              color: Color.fromARGB(255, 118, 106, 0),
              // color: Color.fromARGB(255, 118, 73, 0),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          padding: EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          margin: EdgeInsets.only(
            top: 80,
            left: 30,
            right: 30,
          ),
          child: Center(
            child: Text(
              'Yay! The wait is over. \n  \'Tis your turn now. \n\n    Go have a blast!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        );
        // return Container(
        //   height: 30,
        //   child: Text('Your turn $i'),
        // );
      } else {
        showNotification2();
        return Container(
          decoration: BoxDecoration(
              // color: Color.fromARGB(255, 232, 63, 128),
              // color: Color.fromARGB(255, 112, 120, 0),
              // color: Color.fromARGB(255, 118, 94, 0),
              // color: Color.fromARGB(255, 118, 43, 0),
              color: Color.fromARGB(255, 118, 73, 0),
              // color: Color.fromARGB(255, 118, 106, 0),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          padding: EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          margin: EdgeInsets.only(
            top: 80,
            left: 30,
            right: 30,
          ),
          child: Center(
            child: Text(
              '                   Please wait. \n\n Your turn is after $u people in the \n                        queue. \n\n Watch out this space for updates.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        );
        // return Container(
        //   height: 30,
        //   child: Text('Your in the queue $i'),
        // );
      }
    }
    // else {
    //   return Container(
    //     height: 30,
    //     child: Text('bitches be crazy man'),
    //   );
    // }
  }
}
