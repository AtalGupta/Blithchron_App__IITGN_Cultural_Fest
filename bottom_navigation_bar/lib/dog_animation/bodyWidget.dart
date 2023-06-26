// import 'package:flutter/cupertino.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class bodyWidget extends StatefulWidget {
//   const bodyWidget({super.key});

//   @override
//   State<bodyWidget> createState() => _bodyWidgetState();
// }

// class _bodyWidgetState extends State<bodyWidget> {
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
//             'Your queue in the events you \nregistered for will show here.',
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       );
//       // return Container(
//       //   margin: EdgeInsets.only(top: 50),
//       //   child: Text('Your not in any waiting lobby $i n $l ff $b gg $c'),
//       // );
//       // return Container(
//       //   height: 30,
//       //   child: Text('Your not in any waiting lobby $i n $l ff $b gg $c'),
//       // );
//     } else {
//       if (i == 1) {
//         showNotification();
//         return Container(
//         decoration: BoxDecoration(
//             // color: Color.fromARGB(255, 118, 106, 0),
//             color: Color.fromARGB(255, 118, 106, 0),
//             // color: Color.fromARGB(255, 118, 73, 0),
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
//             'Yay! The wait is over. \n  \'Tis your turn now. \n\n    Go have a blast!',
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       );
//         // return Container(
//         //   height: 30,
//         //   child: Text('Your turn $i'),
//         // );
//       } else {
//         return Container(
//         decoration: BoxDecoration(
//             // color: Color.fromARGB(255, 232, 63, 128),
//             // color: Color.fromARGB(255, 112, 120, 0),
//             // color: Color.fromARGB(255, 118, 94, 0),
//             // color: Color.fromARGB(255, 118, 43, 0),
//             color: Color.fromARGB(255, 118, 73, 0),
//             // color: Color.fromARGB(255, 118, 106, 0),
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
//             '                   Please wait. \n\n Your turn is after $u people in the \n                        queue. \n\n Watch out this space for updates.',
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       );
//         // return Container(
//         //   height: 30,
//         //   child: Text('Your in the queue $i'),
//         // );
//       }
//     }
//     // else {
//     //   return Container(
//     //     height: 30,
//     //     child: Text('bitches be crazy man'),
//     //   );
//     // }
//   }
//   }
// }