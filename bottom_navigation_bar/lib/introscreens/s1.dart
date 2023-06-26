import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class intros1 extends StatelessWidget {
  const intros1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Color background = Color.fromARGB(255, 103, 58, 183);
    final Color background = Color.fromARGB(255, 110, 160, 200);

    // final Color fill = Colors.redAccent;
    final Color fill = Colors.pink;

    final List<Color> gradient = [
      background,
      background,
      fill,
      fill,
    ];
    final double fillPercent = 0; // fills 56.23% for container from bottom
    final double fillStop = (100 - fillPercent) / 100;
    final List<double> stops = [0.0, fillStop, fillStop, 1.0];
    return Container(
      padding: EdgeInsets.only(
          // top: 200,
          top: MediaQuery.of(context).size.height * 0.248),
      // color: Colors.pink[400],

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradient,
          stops: stops,
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
        ),
      ),

      child: Column(
        children: [
          Center(
            child: Text(
              ' howdy blithchronite, we\'re\nso glad for your here, finally',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          SizedBox(
            // height: 30,
            height: MediaQuery.of(context).size.height * 0.0375,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            // child: Image.asset(
            //   // 'images/i0.png',
            //   'images/Mt. B 1.png',

            //   // height: 300,
            //   height: MediaQuery.of(context).size.height * 0.372,
            //   // width: 300,
            //   width: MediaQuery.of(context).size.width * 0.75,
            // ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.372,
              width: MediaQuery.of(context).size.width * 0.75,
              child: SvgPicture.asset('images/Mt. B 1.svg'),
            ),
          ),
          SizedBox(
            // height: 40,
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          // Center(
          //   child: Text(
          //     'you are about to embark on the most\n    beautiful adventure of your life.',
          //     style: TextStyle(color: Colors.white, fontSize: 20),
          //   ),
          // ),
        ],
      ),
    );
  }
}
