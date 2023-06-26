import 'package:flutter/material.dart';

class intros3 extends StatelessWidget {
  const intros3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color.fromARGB(255, 236, 64, 170),
      color: Color.fromARGB(255, 223, 74, 63),
      // color: Colors.deepPurple[500],
      // color: Color.fromARGB(255, 0, 255, 149),
      child: Padding(
        padding: EdgeInsets.only(
          // top: 220.0,
          top: MediaQuery.of(context).size.height * 0.273
        ),
        child: Column(
          children: [
            Center(
                child: Text(
              'take the first step into the\n               blithverse',
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
            SizedBox(
              height: 30,
              // height: MediaQuery.of(context).size.height * 0.05,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                // 'images/boape.gif',
                'images/WhatsApp Image 2022-10-16 at 15.43.02.jpg',
                // height: 300,
                // width: 350,
                width: MediaQuery.of(context).size.width * 0.91,
              ),
            ),
            SizedBox(
              height: 30,
              // height: MediaQuery.of(context).size.height * 0.0625,
            ),
            Text(
              // 'infinite fun and madness awaits you\nlogin to get started',
              'login to get started',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
