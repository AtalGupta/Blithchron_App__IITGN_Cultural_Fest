// // import 'package:shared_preferences/shared_preferences.dart';

// // final prefs = await SharedPreferences.getInstance();

// // // read
// // final myInt = prefs.getInt('my_int_key') ?? 0;
// // // write
// // prefs.setInt('my_int_key', 42);

// int counter = 1;

// // import 'package:flutter/src/foundation/key.dart';
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'package:bottom_navigation_bar/User_Profile_Page/userprofilepage.dart';

// // class globa extends StatefulWidget {
// //   const globa({Key? key}) : super(key: key);

// //   @override
// //   State<globa> createState() => _globaState();
// // }

// // abstract class _globaState extends State<globa> {
// //   @override
// //   void initState() {
// //     // TODO: implement initState
// //     super.initState();
// //     checkForCounterValue();
// //   }
// //   checkForCounterValue() {
// //     int count = getCouterValue() ?? 0;
// //   }
// // }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import 'package:flutter/src/foundation/key.dart';

// import 'package:bottom_navigation_bar/User_Profile_Page/userprofilepage.dart';

// import 'globals.dart' as globals;

// import 'package:shared_preferences/shared_preferences.dart';

// class gbals extends StatefulWidget {
//   const gbals({Key? key}) : super(key: key);

//   @override
//   State<gbals> createState() => _gbalsState();
// }

// class _gbalsState extends State<gbals> {

//   int counter = 1;

//   getCouterValue() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     int? count = pref.getInt('counterValue');
//     return count;
//   }

//   setCounterValue() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     pref.setInt('counterValue', counter);
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     checkForCounterValue();
//   }
//   checkForCounterValue() async {
//     int count = await getCouterValue() ?? 0;

//     setState((){
//       counter = count;
//     });
//   }

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Container();
//   // }

//   @override
//   dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
// }

// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPrefUtils {
//   getCouterValue() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     int? count = pref.getInt('counterValue');
//     return count;
//   }

//   setCounterValue() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     pref.setInt('counterValue', counter);
//   }
// }

// import 'package:bottom_navigation_bar/Intro_Screens/users_sheet_api.dart';

// import 'package:bottom_navigation_bar/Intro_Screens/users_sheet_api.dart';

// import 'package:bottom_navigation_bar/Intro_Screens/user.dart';
// import 'package:bottom_navigation_bar/Intro_Screens/users_sheet_api.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/container.dart';

int counter = 1;

final bool bigflag = false;

// User2? user2;

// class glob extends StatefulWidget {
//   User2? user2;

//   glob({super.key});

//   @override
//   State<glob> createState() => _globState();
// }

// class _globState extends State<glob> {
//   User2? user2;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // checkForCounterValue();
//     getUsers();
//     // initUser();
//     // checkForIdValue();
//     // checkForname();
//     // checkForuserValue();
//   }

//   Future getUsers() async {
//     // final user2 = await UserSheetApi.getById(309);
//     int interuwu = await UserSheetApi.getRowCount();
//     user2 = await UserSheetApi.getById(interuwu);
//     setState(() {
//       this.user2 = user2;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// int? a = user2!.id;

// late String ussa;

// late int id;

// late int id;

// int tt = UserSheetApi.getRowCount() + 1;

// final a = UserSheetApi.getById(2);

// int c = _userSheet

// final lastRow = await _userSheet!.values.lastRow();
    // return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;



// void A(user) async {
  // int f = await UserSheetApi.getRowCount() + 1;
//   // setState(() {
//   //   tt = id;
//   // });
//   // logininfo.idss=id;
//   // final newUser = user.copy(id: logininfo.id);
//   // await UserSheetApi.insert([newUser.toJson()]);
// }
          


// int q = UserSheetApi.getRowCount();