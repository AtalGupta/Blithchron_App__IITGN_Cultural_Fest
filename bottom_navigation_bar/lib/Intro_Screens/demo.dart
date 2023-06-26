import 'package:flutter/material.dart';

import 'content_card.dart';
import 'gooey_carousel.dart';

// class GooeyEdgeDemo extends StatefulWidget {
//   GooeyEdgeDemo({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _GooeyEdgeDemoState createState() => _GooeyEdgeDemoState();
// }
class GooeyEdgeDemo extends StatefulWidget {
  GooeyEdgeDemo({
    Key? key,
  }) : super(key: key);

  // final String title;

  @override
  _GooeyEdgeDemoState createState() => _GooeyEdgeDemoState();
}

class _GooeyEdgeDemoState extends State<GooeyEdgeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GooeyCarousel(
        children: <Widget>[
          ContentCard(
            color: 'Red',
            // color: 'Blue',
            altColor: Color(0xFF4259B2),
            // title: "Wake up gently \nwith sounds of nature",
            title: "Howdy Blithchronite, we\'re so glad for you're here, finally",
            // subtitle: 'Relax your mind and create inner peace with soothing sounds of nature.',
            subtitle: 'swipe',
          ),
          ContentCard(
            color: 'Yellow',
            // color: 'Blue',
            altColor: Color(0xFF904E93),
            // title: "Clear your mind \nwith breathing exercises",
            title:
                // "you are about to embark on the most beautiful adventure of your life",
                // "embark on the most beautiful adventure of your life",
                "Get ready to embark on the most beautiful adventure of your life",
            // "st",
            subtitle:
                // 'Melt your stresses and anxieties away with 50+ breathing exercises.',
                'swipe',
          ),
          ContentCard(
            color: 'Blue',
            altColor: Color(0xFFFFB138),
            // title: "Fall asleep \nwith bedtime stories",
            title: "Take the first step into the Blithverse of Endless Euphoria",
            subtitle:
                // 'Enjoy a restful night’s sleep with relaxing activities and calm bedtime stories.',
                // '',
                'Login to get started',
          ),
        ],
      ),
    );
  }
}
