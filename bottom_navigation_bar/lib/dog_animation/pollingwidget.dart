// // import 'package:flutter/src/widgets/container.dart';
// // import 'package:flutter/src/widgets/framework.dart';

// // class polling extends StatefulWidget {
// //   const polling({super.key});

// //   @override
// //   State<polling> createState() => _pollingState();
// // }

// // class _pollingState extends State<polling> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container();
// //   }
// // }

// import 'package:bottom_navigation_bar/Intro_Screens/user.dart';
// import 'package:bottom_navigation_bar/Intro_Screens/users_sheet_api.dart';
// import 'package:bottom_navigation_bar/main.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'globalas.dart';

// // int? b;

// class pollingwidget extends StatefulWidget {
//   // wlobby? Wlobby;

//   pollingwidget({super.key});

//   @override
//   State<pollingwidget> createState() => _pollingwidgetState();
// }

// class _pollingwidgetState extends State<pollingwidget> {
//   int? b;

//   bool flag = false;
//   // var arr = new List.filled(bb, null, growable: false);
//   // var arr;
//   var arr = new List.empty(growable: true);
//   // var arr = new List.

//   int i = 1;
//   int l = 7;
//   int bb = 1;
//   // wlobby? Wlobby;
//   poll? poll1;
//   poll? poll2;
//   poll? poll3;
//   poll? poll4;
//   poll? poll5;
//   poll? poll6;
//   poll? poll7;
//   poll? poll8;
//   poll? poll9;
//   poll? poll10;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getUsers();
//     // checkForIdValue();
//     // checkForname();
//     // checkForuserValue();
//   }

//   // @override
//   // void didUpdateWidget(covariant oldWidget){
//   //   super.didUpdateWidget(oldWidget);

//   //   getUsers();
//   // }

//   Future getUsers() async {
//     poll? polly;
//     polly = await UserSheetApi.getById3(1);
//     // int ghi = await UserSheetApi.getRowCount3();
//     // setState(() {
//     //   this.bb = ghi;
//     // });
//     // setState(() {
//     //   // this.bb = ghi;
//     //   // arr = new List.filled(bb, poll, growable: true);
//     //   arr= new List.empty(growable: true);
//     // });
//     // arr = new List.filled(bb, null, growable: true);

//     if (polly?.control1 == 1) {
//       // flag = true;
//       setState(() {
//         this.flag = true;
//       });
//     }

//     poll? polly1;
//     polly1 = await UserSheetApi.getById3(1);

//     poll? polly2;
//     polly2 = await UserSheetApi.getById3(2);

//     poll? polly3;
//     polly3 = await UserSheetApi.getById3(3);

//     poll? polly4;
//     polly4 = await UserSheetApi.getById3(4);

//     poll? polly5;
//     polly5 = await UserSheetApi.getById3(5);

//     poll? polly6;
//     polly6 = await UserSheetApi.getById3(6);

//     poll? polly7;
//     polly7 = await UserSheetApi.getById3(7);

//     poll? polly8;
//     polly8 = await UserSheetApi.getById3(8);

//     poll? polly9;
//     polly9 = await UserSheetApi.getById3(9);

//     poll? polly10;
//     polly10 = await UserSheetApi.getById3(10);

//     setState(() {
//       this.poll1 = polly1;
//       this.poll2 = polly2;
//       this.poll3 = polly3;
//       this.poll4 = polly4;
//       this.poll5 = polly5;
//       this.poll6 = polly6;
//       this.poll7 = polly7;
//       this.poll8 = polly8;
//       this.poll9 = polly9;
//       this.poll10 = polly10;
//     });

//     // return Container(color: Colors.black,height: 100,);
//     //   // wlobby? wlob;
//     //   // final user2 = await UserSheetApi.getById(309);

//     //   int uid = await UserSheetApi.getRowCount();
//     //   // final user2 = await UserSheetApi.getById(interuwu);
//     //   int last = await UserSheetApi.getRowCount2();

//     //   for (; i <= last; i++) {
//     //     final wlob = await UserSheetApi.getById2(i);
//     //     if ((wlob?.userid) == uid) {
//     //       setState(() {
//     //         this.flag = true;
//     //       });
//     //       setState(() {
//     //         this.b = i;
//     //       });
//     //       // b = i;
//     //       // flag = true;
//     //       break;
//     //     }
//     //   }
//     //   for (; l < 10; l++) {
//     //     print(l);
//     //     // l++;
//     //   }

//     //   final fwlobby = await UserSheetApi.getById2(1);

//     //   setState(() {
//     //     this.Wlobby = fwlobby;
//     //   });
//   }

//   // Future getPartipants() async {
//   //   // poll? polly;
//   //   int l = await UserSheetApi.getRowCount3();
//   //   for (; i <= l; i++) {
//   //     poll? polly;
//   //     polly = await UserSheetApi.getById3(i);
//   //     // arr[i] = polly;
//   //     setState(() {
//   //       arr.add(polly);
//   //     });
//   //     // arr.add(polly);
//   //     // return Container(
//   //     //   child: Text(polly.name),
//   //     //   // child: Text('hiii'),
//   //     // );
//   //   }
//   // }

//   // Future getPartipants(int g, poll? pollya) async {
//   //   poll? pollyw;
//   //   // int l = await UserSheetApi.getRowCount3();
//   //   // for (; i <= 3; i++) {
//   //   // poll polly;
//   //   pollyw = await UserSheetApi.getById3(g);
//   //   setState(() {
//   //     pollya = pollyw;
//   //   });
//   //   // return polly;
//   //   // return Container(
//   //   //   child: Text(polly.name),
//   //   //   // child: Text('hiii'),
//   //   // );
//   //   // }
//   // }

//   // void showNotification() {
//   //   // setState(() {
//   //   //   _counter++;
//   //   // });
//   //   if (noti == false) {
//   //     setState(() {
//   //       noti = true;
//   //     });
//   //     flutterLocalNotificationsPlugin.show(
//   //         0,
//   //         "Yay!",
//   //         "The wait is over. \'Tis your turn now. Go have a blast!",
//   //         NotificationDetails(
//   //             android: AndroidNotificationDetails(channel.id, channel.name,
//   //                 channelDescription: channel.description,
//   //                 importance: Importance.high,
//   //                 color: Colors.blue,
//   //                 playSound: true,
//   //                 icon: '@mipmap/ic_launcher')));
//   //   }
//   // }

//   // void showNotification2() {
//   //   // setState(() {
//   //   //   _counter++;
//   //   // });
//   //   if (noti2 == false) {
//   //     noti2 = true;
//   //     flutterLocalNotificationsPlugin.show(
//   //         0,
//   //         "Succefully Registered!",
//   //         "Please wait. You are in the queue for your turn. Watch out this space for updates.",
//   //         NotificationDetails(
//   //             android: AndroidNotificationDetails(channel.id, channel.name,
//   //                 channelDescription: channel.description,
//   //                 importance: Importance.high,
//   //                 color: Colors.blue,
//   //                 playSound: true,
//   //                 icon: '@mipmap/ic_launcher')));
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     if (flag == false) {
//       return Container(
//         decoration: BoxDecoration(
//             // color: Colors.blueGrey,
//             color: Color.fromARGB(255, 0, 136, 122),
//             borderRadius: BorderRadius.all(Radius.circular(10))),
//         padding: EdgeInsets.only(
//           top: 10,
//           bottom: 10,
//         ),
//         margin: EdgeInsets.only(
//           top: 80,
//           left: 30,
//           right: 30,
//         ),
//         child: Center(
//           child: Text(
//             'There are no polls live currently.',
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       );
//     } else {
//       return Column(
//         // children: [if (poll1 != null) {
//         //   Text('hi');
//         // }],
//         // poll1widg();
//         children: [
//           poll1widg(),
//           poll2widg(),
//           poll3widg(),
//           poll4widg(),
//           poll5widg(),
//           poll6widg(),
//           poll7widg(),
//           poll8widg(),
//           poll9widg(),
//           poll10widg(),
//         ],
//       );

//       // return Container(
//       //   child: Text(arr[0].name),
//       // );
//       // StreamBuilder(builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot){
//       //   return Container(child: Text('hi'),);
//       // });

//       // return Container(
//       //   decoration: BoxDecoration(
//       //       // color: Colors.blueGrey,
//       //       color: Color.fromARGB(255, 0, 136, 122),
//       //       borderRadius: BorderRadius.all(Radius.circular(10))),
//       //   padding: EdgeInsets.only(
//       //     top: 10,
//       //     bottom: 10,
//       //   ),
//       //   margin: EdgeInsets.only(
//       //     top: 80,
//       //     left: 30,
//       //     right: 30,
//       //   ),
//       // getPartipants();
//       // ppp();
//       // for (int v = 1; v <= bb; v++) {
//       // Future getPartipants() async {
//       //   poll? pollyw;
//       //   // poll? pollyr tbh = new List();
//       //   // var arr = new List.filled(5, null, growable: false);
//       //   // int hvb[5];

//       //   int l = await UserSheetApi.getRowCount3();
//       //   for (; i <= 3; i++) {
//       //     poll polly;
//       //     pollyw = await UserSheetApi.getById3(i);

//       //     // setState(() {
//       //     //   pollya = pollyw;
//       //     // });
//       //     // return polly;
//       //     return Container(
//       //       child: Text(pollyw!.name),
//       //       // child: Text('hi$bb'),
//       //       // child: Text('hiii'),
//       //     );
//       //   }
//       // }

//       // getPartipants();
//       // }

//       // for (int f = 1; f <= bb; f++) {
//       // return getPartipants(f);
//       // poll? pollww;
//       // // getPartipants(2, pollww);
//       // return Container(
//       //   child: Text(pollww!.name),
//       // );
//       // }
//       // return Container();
//       // return Container(
//       //   color: Colors.blue,
//       //   height: 100,
//       // );
//       //   // StreamBuilder(builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot)),
//       //   // child: Center(
//       //   //   child: getPartipants(),
//       //   //   // child: Text(
//       //   //   //   'Polls live bitch!',
//       //   //   //   style: TextStyle(
//       //   //   //     fontSize: 20,
//       //   //   //     color: Colors.white,
//       //   //   //   ),
//       //   //   // ),
//       //   // ),
//       // );
//     }
//   }

//   //   final int? c = Wlobby?.number;
//   //   int u = i - 1;
//   //   if (flag == false) {
//   //     return Container(
//   //       decoration: BoxDecoration(
//   //           // color: Colors.blueGrey,
//   //           color: Color.fromARGB(255, 0, 136, 122),
//   //           borderRadius: BorderRadius.all(Radius.circular(10))),
//   //       padding: EdgeInsets.only(
//   //         top: 10,
//   //         bottom: 10,
//   //       ),
//   //       margin: EdgeInsets.only(
//   //         top: 80,
//   //         left: 30,
//   //         right: 30,
//   //       ),
//   //       child: Center(
//   //         child: Text(
//   //           'Your queue in the events you \nregistered for will show here.',
//   //           style: TextStyle(
//   //             fontSize: 20,
//   //             color: Colors.white,
//   //           ),
//   //         ),
//   //       ),
//   //     );
//   //     // return Container(
//   //     //   margin: EdgeInsets.only(top: 50),
//   //     //   child: Text('Your not in any waiting lobby $i n $l ff $b gg $c'),
//   //     // );
//   //     // return Container(
//   //     //   height: 30,
//   //     //   child: Text('Your not in any waiting lobby $i n $l ff $b gg $c'),
//   //     // );
//   //   } else {
//   //     if (i == 1) {
//   //       showNotification();
//   //       return Container(
//   //         decoration: BoxDecoration(
//   //             // color: Color.fromARGB(255, 118, 106, 0),
//   //             color: Color.fromARGB(255, 118, 106, 0),
//   //             // color: Color.fromARGB(255, 118, 73, 0),
//   //             borderRadius: BorderRadius.all(Radius.circular(10))),
//   //         padding: EdgeInsets.only(
//   //           top: 10,
//   //           bottom: 10,
//   //         ),
//   //         margin: EdgeInsets.only(
//   //           top: 80,
//   //           left: 30,
//   //           right: 30,
//   //         ),
//   //         child: Center(
//   //           child: Text(
//   //             'Yay! The wait is over. \n  \'Tis your turn now. \n\n    Go have a blast!',
//   //             style: TextStyle(
//   //               fontSize: 20,
//   //               color: Colors.white,
//   //             ),
//   //           ),
//   //         ),
//   //       );
//   //       // return Container(
//   //       //   height: 30,
//   //       //   child: Text('Your turn $i'),
//   //       // );
//   //     } else {
//   //       showNotification2();
//   //       return Container(
//   //         decoration: BoxDecoration(
//   //             // color: Color.fromARGB(255, 232, 63, 128),
//   //             // color: Color.fromARGB(255, 112, 120, 0),
//   //             // color: Color.fromARGB(255, 118, 94, 0),
//   //             // color: Color.fromARGB(255, 118, 43, 0),
//   //             color: Color.fromARGB(255, 118, 73, 0),
//   //             // color: Color.fromARGB(255, 118, 106, 0),
//   //             borderRadius: BorderRadius.all(Radius.circular(10))),
//   //         padding: EdgeInsets.only(
//   //           top: 10,
//   //           bottom: 10,
//   //         ),
//   //         margin: EdgeInsets.only(
//   //           top: 80,
//   //           left: 30,
//   //           right: 30,
//   //         ),
//   //         child: Center(
//   //           child: Text(
//   //             '                   Please wait. \n\n Your turn is after $u people in the \n                        queue. \n\n Watch out this space for updates.',
//   //             style: TextStyle(
//   //               fontSize: 20,
//   //               color: Colors.white,
//   //             ),
//   //           ),
//   //         ),
//   //       );
//   //       // return Container(
//   //       //   height: 30,
//   //       //   child: Text('Your in the queue $i'),
//   //       // );
//   //     }
//   //   }
//   //   // else {
//   //   //   return Container(
//   //   //     height: 30,
//   //   //     child: Text('bitches be crazy man'),
//   //   //   );
//   //   // }
//   // }
//   // Widget getPartipants() {
//   //   // poll? polly;
//   //   // int l = await UserSheetApi.getRowCount3();
//   //   // for (; i <= 3; i++) {
//   //   // poll polly;
//   //   // polly = (await UserSheetApi.getById3(i))!;
//   //   return Container(
//   //     // child: Text(polly.name),
//   //     child: Text('hiii'),
//   //   );
//   //   // }
//   // }
//   Widget poll1widg() {
//     if (poll1 != null) {
//       return Container(
//         child: Text('hi'),
//       );
//     } else {
//       return Container(
//         child: Text('byy'),
//       );
//     }
//   }

//   Widget poll2widg() {
//     if (poll2 != null) {
//       return Container(
//         child: Text('hi'),
//       );
//     } else {
//       return Container(
//         child: Text('byy'),
//       );
//     }
//   }

//   Widget poll3widg() {
//     if (poll3 != null) {
//       return Container(
//         child: Text('hi'),
//       );
//     } else {
//       return Container(
//         child: Text('byy'),
//       );
//     }
//   }

//   Widget poll4widg() {
//     if (poll4 != null) {
//       return Container(
//         child: Text('hi'),
//       );
//     } else {
//       return Container(
//         child: Text('byy'),
//       );
//     }
//   }

//   Widget poll5widg() {
//     if (poll5 != null) {
//       return Container(
//         child: Text('hi'),
//       );
//     } else {
//       return Container(
//         child: Text('byy'),
//       );
//     }
//   }

//   Widget poll6widg() {
//     if (poll6 != null) {
//       return Container(
//         child: Text('hi'),
//       );
//     } else {
//       return Container(
//         child: Text('byy'),
//       );
//     }
//   }

//   Widget poll7widg() {
//     if (poll7 != null) {
//       return Container(
//         child: Text('hi'),
//       );
//     } else {
//       return Container(
//         child: Text('byy'),
//       );
//     }
//   }

//   Widget poll8widg() {
//     if (poll8 != null) {
//       return Container(
//         child: Text('hi'),
//       );
//     } else {
//       return Container(
//         child: Text('byy'),
//       );
//     }
//   }

//   Widget poll9widg() {
//     if (poll9 != null) {
//       return Container(
//         child: Text('hi'),
//       );
//     } else {
//       return Container(
//         child: Text('byy'),
//       );
//     }
//   }

//   Widget poll10widg() {
//     if (poll10 != null) {
//       return Container(
//         child: Text('hi'),
//       );
//     } else {
//       return Container(
//         child: Text('byy'),
//       );
//     }
//   }
// }
// // 3
// // class ppp6poll6poll5poll4extends StatelessWidget {
// //   const ppp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       height: 100,
// //       child: Text('hiii'),
// //     );
// //   }
// // 4poll6