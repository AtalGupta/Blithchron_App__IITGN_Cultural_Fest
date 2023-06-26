/*import 'package:bottom_navigation_bar/Home_Page/homepage.dart';
import 'package:bottom_navigation_bar/auth/login.dart';
import 'package:bottom_navigation_bar/auth/signin.dart';*/
import 'package:bottom_navigation_bar/Intro_Screens/logininfopage.dart';
import 'package:bottom_navigation_bar/auth/signin.dart';

import 'package:bottom_navigation_bar/bee.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/scheduler.dart';

import 'main.dart';

class ContentCard extends StatefulWidget {
  final String color;
  final Color altColor;
  final String title;
  final String subtitle;

  ContentCard(
      {required this.color,
      this.title = "",
      required this.subtitle,
      required this.altColor})
      : super();

  @override
  _ContentCardState createState() => _ContentCardState();
}

class _ContentCardState extends State<ContentCard> {
  late Ticker _ticker;

  @override
  void initState() {
    _ticker = Ticker((d) {
      setState(() {});
    })
      ..start();
    super.initState();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var time = DateTime.now().millisecondsSinceEpoch / 2000;
    var scaleX = 1.2 + sin(time) * .05;
    var scaleY = 1.2 + cos(time) * .07;
    var offsetY = 20 + cos(time) * 20;
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: <Widget>[
        Transform(
          transform: Matrix4.diagonal3Values(scaleX, scaleY, 1),
          child: Transform.translate(
            offset: Offset(-(scaleX - 1) / 2 * size.width,
                -(scaleY - 1) / 2 * size.height + offsetY),
            child: Image.asset('images/Bg-${widget.color}.png',
                fit: BoxFit.cover, package: App.pkg),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 100.0,
              bottom: 25.0,
            ),
            child: Column(
              children: <Widget>[
                //Top Image
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    // child: Image.asset('images/Illustration-${widget.color}.png', fit: BoxFit.contain, package: App.pkg),
                    // child: Image.asset('images/Mt. B 1.png', fit: BoxFit.contain, package: App.pkg),
                    child: SvgPicture.asset(
                      // 'images/Mt. B 1.svg',
                      'images/B_Mount 2.svg',
                      fit: BoxFit.contain,
                      package: App.pkg,
                    ),
                  ),
                ),

                //Slider circles
                Container(
                    height: 14,
                    child: Image.asset('images/Slider-${widget.color}.png',
                        package: App.pkg)),

                //Bottom content
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: _buildBottomContent(),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBottomContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(widget.title,
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 1.2,
                // fontSize: 30.0,
                // fontSize: 25.0,
                // fontSize: 23.3,
                fontSize: 23.0,
                fontFamily: 'Circular',
                color: Colors.white,
                package: App.pkg)),
        Text(widget.subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                // fontSize: 14.0,
                fontSize: 20,
                fontWeight: FontWeight.w300,
                fontFamily: 'Circular',
                color: Colors.white,
                package: App.pkg)),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0),
            child: MaterialButton(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: widget.altColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text('Get Started',
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: .8,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          package: App.pkg)),
                ),
                onPressed: () {
                  //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                  //     return logininfo();
                  //   }));
                  signInWithGoogle().then((result) {
                    if (result != null) {
                      // Navigator.of(this.context).pushReplacement(
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return MyApp2();
                      //     },
                      //   ),
                      // );F
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                        return logininfo();
                      }));
                    }
                    // });
                  });
                }))
      ],
    );
  }
}
