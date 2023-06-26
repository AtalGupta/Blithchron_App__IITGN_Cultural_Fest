import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'User_Profile_Page/merch.dart';
import 'User_Profile_Page/eatery.dart';

/*class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: store(),
    );
  }
}*/
class store extends StatefulWidget {
  const store({super.key});

  @override
  State<store> createState() => _storestate();
}

class _storestate extends State<store> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          // backgroundColor: Colors.amber,
          // backgroundColor: Colors.amber[100],
          // backgroundColor: Color.fromARGB(255, 242, 255, 179),
          // backgroundColor: Color.fromARGB(255, 213, 255, 179),
          // backgroundColor: Color.fromARGB(255, 179, 255, 189),
          backgroundColor: Color.fromARGB(255, 179, 251, 255),
          // backgroundColor: Color.fromARGB(255, 255, 247, 179),
          // backgroundColor: Color.fromARGB(255, 252, 241, 255),
          // backgroundColor: Color.fromARGB(255, 206, 179, 255),
          // backgroundColor: Color.fromARGB(255, 222, 194, 255),
          // backgroundColor: Color.fromARGB(255, 179, 231, 255),
          // backgroundColor: Color.fromARGB(255, 179, 195, 255),
          // backgroundColor: Color.fromARGB(255, 216, 179, 255),
          // backgroundColor: Color.fromARGB(255, 255, 179, 241),
          // backgroundColor: Color.fromARGB(255, 255, 179, 203),
          // backgroundColor: Color.fromARGB(255, 255, 179, 179),
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Center(
              child: Text(
                "Store",
                style: TextStyle(
                    fontSize: 28, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ),
          body: SingleChildScrollView(
            // padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Column(
              children: [
                // SizedBox(height: 40.0.h),
                // SizedBox(height: 10.0.h),
                SizedBox(height: 12.0.h),

                TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.transparent,
                  labelColor: const Color(0xFFC88D67),
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 10, right: 10),
                  unselectedLabelColor: const Color(0xFFCDCDCD),
                  tabs: [
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        width: 200,
                        child: Padding(
                          // padding: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.only(
                            // left: 10,
                            top: 5,
                            bottom: 5,
                          ),
                          child: Center(
                            child: Text('Merchandise',
                                style: TextStyle(
                                    // fontFamily: 'Varela',
                                    fontFamily: 'Circular',
                                    // fontSize: 20.0.sp,
                                    fontSize: 25.0.sp,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                          // color: Colors.blue,
                        ),
                        // width: 150,
                        width: 200,
                        // height: 200,
                        child: Padding(
                          // padding: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.only(
                            // left: 10,
                            top: 5,
                            bottom: 5,
                          ),
                          child: Center(
                            child: Text('Eatery',
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    // fontSize: 20.0.sp,
                                    fontSize: 25.0.sp,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 140),

                // Container(
                //   height: 100,
                //   // padding: EdgeInsets.only(left: 30),
                //   decoration:
                //       BoxDecoration(borderRadius: BorderRadius.circular(20)),
                //   child: Container(
                //     child: Image.asset(
                //       'images/coming-soon-under-construction-responsive-website-template1.jpg',
                //     ),
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: Colors.black,
                //     ),
                //   ),
                // ),

                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      // 'images/coming-soon-under-construction-responsive-website-template1.jpg',
                      'images/newcomingsoon.jpg',
                    ),
                  ),
                ),
                // SizedBox(height: 310),
                // SizedBox(height: 555),
                // SizedBox(height: 250),
                // SizedBox(height: 270),
                SizedBox(height: 235),
                // SizedBox(height: 536),
                // SizedBox(height: 540),
                // Container(
                //   // height: MediaQuery.of(context).size.height - 70.0.h,
                //   height: 350,
                //   width: double.infinity,
                //   decoration:
                //       BoxDecoration(borderRadius: BorderRadius.circular(20)),
                //   child: TabBarView(
                //     controller: _tabController,
                //     children: const [
                //       Merch(),
                //       eaterylist(),
                //     ],
                //   ),
                // ),
                // Image.asset('images/Component 11.png'),
                // Image.asset('images/events section-05 11.png')
                Image.asset('images/hills.png')
              ],
            ),
          ),
        );
      },
    );
  }
}

// class store extends StatelessWidget {
//   const store({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         title: const Center(
//           child: Text(
//             "Store",
//             style: TextStyle(
//                 fontSize: 28, color: Color.fromARGB(255, 255, 255, 255)),
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(
//               // top: 8.0,
//               top: MediaQuery.of(context).size.height * 0.01,
//               // left: 10,
//               left: MediaQuery.of(context).size.width * 0.025,
//               right: MediaQuery.of(context).size.width * 0.025,
//             ),
//             child: Container(
//               // height: 45,
//               height: MediaQuery.of(context).size.height * 0.05625,
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 60, 158, 207),
//                 borderRadius: BorderRadius.circular(
//                   MediaQuery.of(context).size.width * 0.025,
//                 ),
//               ),
//               padding: EdgeInsets.only(
//                   // left: 15,
//                   left: MediaQuery.of(context).size.width * 0.0375),
//               // color: Color.fromARGB(255, 5, 117, 157),
//               // color: Color.fromARGB(255, 60, 158, 207),
//               child: Row(
//                 children: [
//                   Text(
//                     'Official Blith Merchandise',
//                     style: TextStyle(
//                       fontSize: 24,
//                       color: Color.fromARGB(255, 255, 255, 255),
//                       // fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
