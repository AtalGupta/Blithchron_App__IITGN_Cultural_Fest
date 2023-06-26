import 'package:flutter/material.dart';

class intros2 extends StatelessWidget {
  const intros2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 160),
      child: Column(
        children: [
          Center(
            child: Text(
              // 'you are about to embark on the\n   most beautiful adventure of\n                    your life.',
              'now just sit back and relax,',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          SizedBox(
            // height: 20,
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'images/boape.gif',
              // 'images/WhatsApp Image 2022-10-16 at 15.43.02.jpg',
              // height: 400,
              // width: 300,
              width: MediaQuery.of(context).size.width * 0.78,
            ),
          ),
          SizedBox(
            // height: 40,
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Center(
            child: Text(
              ' as you are about to embark on \n  the most beautiful adventure \n                   of your life.',
              // 'as you embark on the most\n    beautiful adventure of\n                your life.',
              // ' sit back and hold tight as you \n embark on the most beautiful\n        adventure of your life.',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ],
      ),
      // color: Colors.deepPurple[500],
      // color: Color.fromARGB(255, 0, 139, 65),
      // color: Colors.green,
      // color: Color.fromARGB(255, 88, 26, 233),
      color: Colors.deepPurple[500],
    );
  }
}
