import 'package:bottom_navigation_bar/Intro_Screens/user.dart';
import 'package:bottom_navigation_bar/Intro_Screens/users_sheet_api.dart';
import 'package:bottom_navigation_bar/User_Profile_Page/globals.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowUserId extends StatefulWidget {
  User2? user2;

  ShowUserId({super.key});

  @override
  State<ShowUserId> createState() => _ShowUserIdState();
}

class _ShowUserIdState extends State<ShowUserId> {
  late final user = FirebaseAuth.instance.currentUser!;
  User2? user2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsers();
    // checkForIdValue();
    // checkForname();
    // checkForuserValue();
  }

  Future getUsers() async {
    // final user2 = await UserSheetApi.getById(309);

    // int interuwu = await UserSheetApi.getRowCount();
    // final user2 = await UserSheetApi.getById(interuwu);
    // int interuwu = await UserSheetApi.getRowCount();

    // final user2 = await UserSheetApi.getById(await UserSheetApi.getRowCount());
    final user2 = await UserSheetApi.getById4(user.uid);

    setState(() {
      this.user2 = user2;
    });
  }

  @override
  Widget build(BuildContext context) {
    String nam;
    String upnam = user.displayName!.toUpperCase();
    int len = user.displayName!.length;
    if (len >= 3) {
      nam = upnam.substring(0, 3);
    } else {
      nam = upnam.substring(0, len);
    }
    final int? nqu = user2?.id;
    if (user2 != null) {
      return Padding(
        padding: EdgeInsets.only(
            // top: MediaQuery.of(context).size.height * 0.01,
            top: 5,
            ),
        child: Container(
          width: MediaQuery.of(context).size.width - 5,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              // 'Ayush Modi',
              // user.displayName!,
              'BLITH-$nam-$nqu',
              // user.uid,
              // 'BLITH-XO-$io',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      );
    } else {
      return Container(
        // color: Colors.black,
        // height: 17.5,
        height: 24,
      );
    }
  }
}



// Widget ShowUserId() => Padding(
//                       padding: EdgeInsets.only(
//                           // top: MediaQuery.of(context).size.height * 0.01,
//                           ),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width - 5,
//                         child: FittedBox(
//                           fit: BoxFit.scaleDown,
//                           child: Text(
//                             // 'Ayush Modi',
//                             // user.displayName!,
//                             'BL-XO-$nqu',
//                             // 'BLITH-XO-$io',
//                             style: TextStyle(color: Colors.white, fontSize: 15),
//                           ),
//                         ),
//                       ),
//                     ),