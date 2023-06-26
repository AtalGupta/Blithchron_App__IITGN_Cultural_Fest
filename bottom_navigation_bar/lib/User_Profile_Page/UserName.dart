// import 'package:bottom_navigation_bar/Intro_Screens/user.dart';
// import 'package:bottom_navigation_bar/Intro_Screens/users_sheet_api.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class ShowUserName extends StatefulWidget {
//   User2? user2;

//   ShowUserName({super.key});

//   @override
//   State<ShowUserName> createState() => _ShowUserNameState();
// }

// class _ShowUserNameState extends State<ShowUserName> {
//   User2? user2;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getUsers();
//     // checkForIdValue();
//     // checkForname();
//     // checkForuserValue();
//   }

//   Future getUsers() async {
//     // final user2 = await UserSheetApi.getById(309);

//     // int interuwu = await UserSheetApi.getRowCount();
//     // final user2 = await UserSheetApi.getById(interuwu);
//     // int interuwu = await UserSheetApi.getRowCount();
//     final user2 = await UserSheetApi.getById(await UserSheetApi.getRowCount());

//     setState(() {
//       this.user2 = user2;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final user2 = this.user2;
//     if (user2 != null) {
//       return Container(
//         // width: MediaQuery.of(context).size.width - 5,
//         child: FittedBox(
//           fit: BoxFit.scaleDown,
//           child: Text(
//             user2.name,
//             // 'xxx',
//             // 'Ayush Modi',
//             // user.displayName!,
//             // uss,
//             // UserFormWidget.uss,
//             // ussa,
//             style: TextStyle(color: Colors.white, fontSize: 30),
//           ),
//         ),
//       );
//     } else {
//       return Container(
//         height: 30,
//       );
//     }
//   }
// }



// // Widget ShowUserName() => Padding(
// //                       padding: EdgeInsets.only(
// //                           // top: MediaQuery.of(context).size.height * 0.01,
// //                           ),
// //                       child: Container(
// //                         width: MediaQuery.of(context).size.width - 5,
// //                         child: FittedBox(
// //                           fit: BoxFit.scaleDown,
// //                           child: Text(
// //                             // 'Ayush Modi',
// //                             // user.displayName!,
// //                             'BL-XO-$nqu',
// //                             // 'BLITH-XO-$io',
// //                             style: TextStyle(color: Colors.white, fontSize: 15),
// //                           ),
// //                         ),
// //                       ),
// //                     ),