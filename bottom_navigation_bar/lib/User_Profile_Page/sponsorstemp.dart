import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class spons2 extends StatelessWidget {
  const spons2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 81, 234),
      appBar: AppBar(
        title: Text('Proud Sponsors'),
      ),
      body: Padding(
        // padding: const EdgeInsets.only(top: 30.0),
        padding: const EdgeInsets.only(top: 220.0),
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              // 'images/coming-soon-under-construction-responsive-website-template1.jpg',
              'images/newcomingsoon.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
