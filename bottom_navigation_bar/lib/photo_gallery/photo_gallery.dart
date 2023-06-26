import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:sized_context/sized_context.dart';
// import 'package:wonders/common_libs.dart';
// import 'package:wonders/common_libs2.dart';
import 'package:bottom_navigation_bar/photo_gallery/string_utils.dart';
//
//
//
//
//
import 'package:bottom_navigation_bar/photo_gallery/wonder_type.dart';
import 'package:bottom_navigation_bar/photo_gallery/main.dart';
import 'package:bottom_navigation_bar/photo_gallery/styles.dart';
//
//
//
//
//

// import 'package:wonders/logic/data/unsplash_photo_data.dart';
import 'package:bottom_navigation_bar/photo_gallery/app_loading_indicator.dart';
import 'package:bottom_navigation_bar/photo_gallery/buttons.dart';
import 'package:bottom_navigation_bar/photo_gallery/eight_way_swipe_detector.dart';
// import 'package:wonders/ui/common/hidden_collectible.dart';
import 'package:bottom_navigation_bar/photo_gallery/fullscreen_url_img_viewer.dart';
// import 'package:wonders/ui/common/unsplash_photo.dart';
import 'package:bottom_navigation_bar/photo_gallery/app_haptics.dart';

part 'photo_gallery/_animated_cutout_overlay.dart';

class PhotoGallery extends StatefulWidget {
  // const PhotoGallery({
  //   Key? key,
  //   this.imageSize,
  //   required this.collectionId,
  //   required this.wonderType,
  // }) : super(key: key);
  // final Size? imageSize;
  // final String collectionId;
  // final WonderType wonderType;

  @override
  State<PhotoGallery> createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  static const int _gridSize = 5;
  // Index starts in the middle of the grid (eg, 25 items, index will start at 13)
  int _index = (((_gridSize * _gridSize) / 2).round()) - 1;
  Offset _lastSwipeDir = Offset.zero;
  final double _scale = 1;
  bool _skipNextOffsetTween = false;
  late Duration swipeDuration = $styles.times.med * .4;
  final _photoIds = ValueNotifier<List<String>>([]);
  int get _imgCount => pow(_gridSize, 2).round();

  //
  final urls = [
    // 'images/p1.png',
    // 'images/p2.png',
    // 'images/p3.png',
    // 'images/p4.png',
    // 'images/p5.png',
    // 'images/p6.png',
    // 'images/p7.png',
    // 'images/p8.png',
    // 'images/p9.jpg',
    // 'images/p10.png',
    // 'images/p11.png',
    // 'images/p12.png',
    // 'images/p13.png',
    // 'images/p14.png',
    // 'images/p15.png',
    // 'images/p16.jpeg',
    // 'images/p17.png',
    // 'images/p19.JPG',
    // 'images/p20.jpg',
    // 'images/p21.JPG',
    // 'images/p22.JPG',
    // 'images/p23.JPG',
    // 'images/p24.JPG',

    // 'images/p26.JPG',
    // 'images/p25.png',
    // 'images/p27.jpg',
    // 'images/p28.JPG',
    // 'images/p29.jpg',
    // 'images/p30.JPG',
    // 'images/p31.JPG',
    // 'images/p32.JPG',
    // 'images/p33.JPG',
    // 'images/p34.JPG',
    // 'images/p35.JPG',
    // 'images/p36.jpg',
    // 'images/p37.jpg',
    // 'images/p38.jpg',
    // 'images/p39.jpg',
    // 'images/p40.JPG',
    // 'images/p41.JPG',
    // 'images/p42.JPG',
    // 'images/p43.JPG',
    // 'images/p44.JPG',
    // 'images/p45.jpg',
    // 'images/p46.JPG',
    // 'images/p47.JPG',
    // 'images/p48.JPG',
    // 'images/p49.JPG',
    // 'images/p50.jpg',

    /////////////////////////////////////
    'images/o1.jpg',
    'images/o2.jpg',
    'images/o3.jpg',
    'images/o4.jpg',
    'images/o5.jpg',
    // 'images/o6.png',
    'images/p40.jpg',
    'images/o7.jpg',
    // 'images/o8.png',
    'images/p39.jpg',
    'images/o9.jpeg',
    'images/o10.jpg',
    'images/o11.jpg',
    'images/o12.jpg',
    // 'images/o13.png',
    'images/p49.jpg',
    // 'images/Untitled7.png',
    'images/o14.jpg',
    'images/o15.jpg',
    'images/o16.jpg',
    'images/o17.jpg',
    'images/o18.jpg',
    'images/o19.jpg',
    'images/o20.jpg',
    // 'images/o21.JPG',
    'images/o8.jpg',
    'images/o22.jpg',
    'images/o23.png',
    'images/o24.jpeg',
    // 'images/o25.png',
    'images/o13.png',
    ///////////////////////////////////////////////
    // 'images/o26.jpeg',
    // 'images/o27.png',
    // 'images/o28.png',
    // 'images/o29.JPG',
    // 'images/o30.jpg',
    // 'images/o31.JPG',
    // 'images/o32.JPG',
    // 'images/o33.JPG',
    // 'images/o34.JPG',
    // 'images/o35.JPG',
    // 'images/o36.jpg',
    // 'images/o37.JPG',
    // 'images/o38.jpg',
    // 'images/o39.png',
    // 'images/o40.JPG',
    // 'images/o41.JPG',
    // 'images/o42.JPG',
    // 'images/o43.JPG',
    // 'images/o44.JPG',
    // 'images/o45.jpg',
    // 'images/o46.JPG',
    // 'images/o47.jpg',
    // 'images/o48.jpg',
    // 'images/o49.jpg',

    // 'images/i1.jpg',
//     'images/o1.png',
//     'images/image2.jpeg',
//     'images/image3.jpeg',
//     // 'images/o7.png',
//     'images/image4.jpg',
//     'images/image5.jpeg',
//     'images/image6.jpg',
//     'images/download (1).jpeg',
// //
// //
//     // 'images/o8.png',
//     'images/o7.png',

//     'images/o181.png',

//     // 'images/image1.jpg',
//     'images/o9.jpeg',
//     'images/image1.jpg',
//     'images/image1.jpg',
//     'images/o12.png',
//     // 'images/image1.jpg',
//     // 'images/Untitled.png',
//     // 'images/Untitled2.png',
//     'images/Untitled7.png',
//     'images/o14.jpg',

//     // 'images/Untitled3.png',
//     // 'images/image1.jpg',
//     'images/image1.jpg',
//     'images/image1.jpg',
//     'images/image1.jpg',
//     // 'images/image1.jpg',
//     'images/o8.png',
//     'images/o19.png'
//     // 'images/o181.png',

//     'images/image1.jpg',
//     'images/image1.jpg',
//     'images/image1.jpg',
//     'images/image1.jpg',
//     'images/image1.jpg',
//     'images/image1.jpg',
//     'images/image1.jpg',

    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    // 'images/i1.jpg',
    //
    //

    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
    // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _initPhotoIds();
  }

  Future<void> _initPhotoIds() async {
    // var ids = unsplashLogic.getCollectionPhotos(widget.collectionId);
    // var ids = unsplashLogic.getCollectionPhotos(widget.collectionId);
    var ids = [
      // 'images/p1.png',
      // 'images/p2.png',
      // 'images/p3.png',
      // 'images/p4.png',
      // 'images/p5.png',
      // 'images/p6.png',
      // 'images/p7.png',
      // 'images/p8.png',
      // 'images/p9.jpg',
      // 'images/p10.png',
      // 'images/p11.png',
      // 'images/p12.png',
      // 'images/p13.png',
      // 'images/p14.jpg',
      // 'images/p15.png',
      // 'images/p16.jpeg',
      // 'images/p17.png',
      // 'images/p19.JPG',
      // 'images/p20.jpg',
      // 'images/p21.JPG',
      // 'images/p22.JPG',
      // 'images/p23.JPG',
      // 'images/p24.JPG',

      // 'images/p26.JPG',
      // 'images/p25.png',
      // 'images/p27.jpg',
      // 'images/p28.JPG',
      // 'images/p29.jpg',
      // 'images/p30.JPG',
      // 'images/p31.JPG',
      // 'images/p32.JPG',
      // 'images/p33.JPG',
      // 'images/p34.JPG',
      // 'images/p35.JPG',
      // 'images/p36.jpg',
      // 'images/p37.jpg',
      // 'images/p38.jpg',
      // 'images/p39.jpg',
      // 'images/p40.JPG',
      // 'images/p41.JPG',
      // 'images/p42.JPG',
      // 'images/p43.JPG',
      // 'images/p44.JPG',
      // 'images/p45.jpg',
      // 'images/p46.JPG',
      // 'images/p47.JPG',
      // 'images/p48.JPG',
      // 'images/p49.JPG',
      // 'images/p50.jpg',
      ////////////////////////////
      // 'images/o1.png',
      // 'images/o2.png',
      // 'images/o3.png',
      // 'images/o4.png',
      // 'images/o5.png',
      // // 'images/o6.png',
      // 'images/p40.JPG',
      // 'images/o7.png',
      // 'images/o8.png',
      // 'images/o9.jpeg',
      // 'images/o10.png',
      // 'images/o11.png',
      // 'images/o12.png',
      // // 'images/o13.png',
      // // 'images/image6.jpg'
      // 'images/p49.JPG',
      // // ,
      // 'images/o14.jpg',
      // 'images/o15.png',
      // 'images/o16.png',
      // 'images/o17.png',
      // 'images/o18.png',
      // 'images/o19.png',
      // 'images/o20.png',
      // // 'images/o21.JPG',
      // 'images/o8.png',
      // 'images/o22.jpg',
      // 'images/o23.png',
      // 'images/o24.jpeg',
      // 'images/o25.png',
      // 'images/o1.png',
      // 'images/o2.png',
      // 'images/o3.png',
      // 'images/o4.png',
      // 'images/o5.png',
      // // 'images/o6.png',
      // 'images/p40.JPG',
      // 'images/o7.png',
      // // 'images/o8.png',
      // 'images/p39.jpg',
      // 'images/o9.jpeg',
      // 'images/o10.png',
      // 'images/o11.png',
      // 'images/o12.png',
      // // 'images/o13.png',
      // 'images/p49.JPG',
      // // 'images/Untitled7.png',
      // 'images/o14.jpg',
      // 'images/o15.png',
      // 'images/o16.png',
      // 'images/o17.png',
      // 'images/o18.png',
      // 'images/o19.png',
      // 'images/o20.png',
      // // 'images/o21.JPG',
      // 'images/o8.png',
      // 'images/o22.jpg',
      // 'images/o23.png',
      // 'images/o24.jpeg',
      // // 'images/o25.png',
      // 'images/o13.png',
      'images/o1.jpg',
      'images/o2.jpg',
      'images/o3.jpg',
      'images/o4.jpg',
      'images/o5.jpg',
      // 'images/o6.png',
      'images/p40.jpg',
      'images/o7.jpg',
      // 'images/o8.png',
      'images/p39.jpg',
      'images/o9.jpeg',
      'images/o10.jpg',
      'images/o11.jpg',
      'images/o12.jpg',
      // 'images/o13.png',
      'images/p49.jpg',
      // 'images/Untitled7.png',
      'images/o14.jpg',
      'images/o15.jpg',
      'images/o16.jpg',
      'images/o17.jpg',
      'images/o18.jpg',
      'images/o19.jpg',
      'images/o20.jpg',
      // 'images/o21.JPG',
      'images/o8.jpg',
      'images/o22.jpg',
      'images/o23.png',
      'images/o24.jpeg',
      // 'images/o25.png',
      'images/o13.png',
      ///////////////////////////////////////
//       'images/image1.jpg',
//       'images/image2.jpeg',
//       'images/image3.jpeg',
//       'images/image4.jpg',
//       'images/image5.jpeg',
//       'images/image6.jpg',
//       'images/download (1).jpeg',
// //
// //
//       'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
//       // 'images/Untitled.png',

//       // 'images/image1.jpg',
//       // 'images/Untitled.png',
//       'images/image6.jpg',

//       // 'images/Untitled2.png',
//       // 'images/image6.png',

//       'images/Untitled3.png',

//       // 'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
//       'images/image1.jpg',
    ];
    if (ids != null && ids.isNotEmpty) {
      // Ensure we have enough images to fill the grid, repeat if necessary
      while (ids.length < _imgCount) {
        ids.addAll(List.from(ids));
        if (ids.length > _imgCount) ids.length = _imgCount;
      }
    }
    setState(() => _photoIds.value = ids);
  }

  void _setIndex(int value, {bool skipAnimation = false}) {
    if (value < 0 || value >= _imgCount) return;
    _skipNextOffsetTween = skipAnimation;
    setState(() => _index = value);
  }

  /// Determine the required offset to show the current selected index.
  /// index=0 is top-left, and the index=max is bottom-right.
  Offset _calculateCurrentOffset(double padding, Size size) {
    double halfCount = (_gridSize / 2).floorToDouble();
    Size paddedImageSize = Size(size.width + padding, size.height + padding);
    // Get the starting offset that would show the top-left image (index 0)
    final originOffset = Offset(
        halfCount * paddedImageSize.width, halfCount * paddedImageSize.height);
    // Add the offset for the row/col
    int col = _index % _gridSize;
    int row = (_index / _gridSize).floor();
    final indexedOffset =
        Offset(-paddedImageSize.width * col, -paddedImageSize.height * row);
    return originOffset + indexedOffset;
  }

  /// Used for hiding collectibles around the photo grid.
  // int _getCollectibleIndex() {
  //   switch (widget.wonderType) {
  //     case WonderType.chichenItza:
  //     case WonderType.petra:
  //       return 0;
  //     case WonderType.colosseum:
  //     case WonderType.pyramidsGiza:
  //       return _gridSize - 1;
  //     case WonderType.christRedeemer:
  //     case WonderType.machuPicchu:
  //       return _imgCount - 1;
  //     case WonderType.greatWall:
  //     case WonderType.tajMahal:
  //       return _imgCount - _gridSize;
  //   }
  // }

  /// Converts a swipe direction into a new index
  void _handleSwipe(Offset dir) {
    // Calculate new index, y swipes move by an entire row, x swipes move one index at a time
    int newIndex = _index;
    if (dir.dy != 0) newIndex += _gridSize * (dir.dy > 0 ? -1 : 1);
    if (dir.dx != 0) newIndex += (dir.dx > 0 ? -1 : 1);
    // After calculating new index, exit early if we don't like it...
    if (newIndex < 0 || newIndex > _imgCount - 1)
      return; // keep the index in range
    if (dir.dx < 0 && newIndex % _gridSize == 0)
      return; // prevent right-swipe when at right side
    if (dir.dx > 0 && newIndex % _gridSize == _gridSize - 1)
      return; // prevent left-swipe when at left side
    _lastSwipeDir = dir;
    AppHaptics.lightImpact();
    _setIndex(newIndex);
  }

  Future<void> _handleImageTapped(int index) async {
    if (_index == index) {
      int? newIndex = await Navigator.push(
        context,
        CupertinoPageRoute(builder: (_) {
          // final urls = _photoIds.value.map((e) {
          //   return UnsplashPhotoData.getSelfHostedUrl(e, UnsplashPhotoSize.med);
          // }).toList();
          final urls = [
            // 'images/p1.png',
            // 'images/p2.png',
            // 'images/p3.png',
            // 'images/p4.png',
            // 'images/p5.png',
            // 'images/p6.png',
            // 'images/p7.png',
            // 'images/p8.png',
            // 'images/p9.jpg',
            // 'images/p10.png',
            // 'images/p11.png',
            // 'images/p12.png',
            // 'images/p13.png',
            // 'images/p14.jpg',
            // 'images/p15.png',
            // 'images/p16.jpeg',
            // 'images/p17.png',
            // 'images/p19.JPG',
            // 'images/p20.jpg',
            // 'images/p21.JPG',
            // 'images/p22.JPG',
            // 'images/p23.JPG',
            // 'images/p24.JPG',

            // 'images/p26.JPG',
            // 'images/p25.png',
            // 'images/p27.jpg',
            // 'images/p28.JPG',
            // 'images/p29.jpg',
            // 'images/p30.JPG',
            // 'images/p31.JPG',
            // 'images/p32.JPG',
            // 'images/p33.JPG',
            // 'images/p34.JPG',
            // 'images/p35.JPG',
            // 'images/p36.jpg',
            // 'images/p37.jpg',
            // 'images/p38.jpg',
            // 'images/p39.jpg',
            // 'images/p40.JPG',
            // 'images/p41.JPG',
            // 'images/p42.JPG',
            // 'images/p43.JPG',
            // 'images/p44.JPG',
            // 'images/p45.jpg',
            // 'images/p46.JPG',
            // 'images/p47.JPG',
            // 'images/p48.JPG',
            // 'images/p49.JPG',
            // 'images/p50.jpg',
            ////////////////////////////////////
            // 'images/o1.png',
            // 'images/o2.png',
            // 'images/o3.png',
            // 'images/o4.png',
            // 'images/o5.png',
            // // 'images/o6.png',
            // 'images/p40.JPG',
            // 'images/o7.png',
            // 'images/o8.png',
            // 'images/o9.jpeg',
            // 'images/o10.png',
            // 'images/o11.png',
            // 'images/o12.png',
            // // 'images/o13.png',
            // // 'images/image6.jpg',
            // 'images/p49.JPG',

            // 'images/o14.jpg',
            // 'images/o15.png',
            // 'images/o16.png',
            // 'images/o17.png',
            // 'images/o18.png',
            // 'images/o19.png',
            // 'images/o20.png',
            // // 'images/o21.JPG',
            // 'images/o8.png',
            // 'images/o22.jpg',
            // 'images/o23.png',
            // 'images/o24.jpeg',
            // 'images/o25.png',
            // 'images/o1.jpg',
            // 'images/o2.png',
            // 'images/o3.png',
            // 'images/o4.png',
            // 'images/o5.png',
            // // 'images/o6.png',
            // 'images/p40.JPG',
            // 'images/o7.png',
            // // 'images/o8.png',
            // 'images/p39.jpg',
            // 'images/o9.jpeg',
            // 'images/o10.png',
            // 'images/o11.png',
            // 'images/o12.png',
            // // 'images/o13.png',
            // 'images/p49.JPG',
            // // 'images/Untitled7.png',
            // 'images/o14.jpg',
            // 'images/o15.png',
            // 'images/o16.png',
            // 'images/o17.png',
            // 'images/o18.png',
            // 'images/o19.png',
            // 'images/o20.png',
            // // 'images/o21.JPG',
            // 'images/o8.png',
            // 'images/o22.jpg',
            // 'images/o23.png',
            // 'images/o24.jpeg',
            // // 'images/o25.png',
            // 'images/o13.png',
            'images/o1.jpg',
            'images/o2.jpg',
            'images/o3.jpg',
            'images/o4.jpg',
            'images/o5.jpg',
            // 'images/o6.png',
            'images/p40.jpg',
            'images/o7.jpg',
            // 'images/o8.png',
            'images/p39.jpg',
            'images/o9.jpeg',
            'images/o10.jpg',
            'images/o11.jpg',
            'images/o12.jpg',
            // 'images/o13.png',
            'images/p49.jpg',
            // 'images/Untitled7.png',
            'images/o14.jpg',
            'images/o15.jpg',
            'images/o16.jpg',
            'images/o17.jpg',
            'images/o18.jpg',
            'images/o19.jpg',
            'images/o20.jpg',
            // 'images/o21.JPG',
            'images/o8.jpg',
            'images/o22.jpg',
            'images/o23.png',
            'images/o24.jpeg',
            // 'images/o25.png',
            'images/o13.png',
            //////////////////////////////////////////////////
            // 'images/i1.jpg',
            // 'images/image1.jpg',
            // 'images/image2.jpeg',
            // 'images/image3.jpeg',
            // 'images/image4.jpg',
            // 'images/image5.jpeg',
            // 'images/image6.jpg',
            // 'images/download (1).jpeg',
            // //
            // //
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // // 'images/image1.jpg',
            // // 'images/Untitled.png',
            // 'images/image6.jpg',

            // // 'images/Untitled2.png',
            // // 'images/Untitled7.png',
            // 'images/Untitled3.png',

            // // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/image1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',
            // 'images/i1.jpg',

            //
            //

            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',
            // 'https://i.pinimg.com/originals/36/ee/80/36ee807ce7d8beb9363edd2354cf392c.jpg',

            // 'images/i1.jpg',
            // "images/i2.jpg",
            // "images/i3.jpg",
            // "images/i4.jpg",
            // "images/i5.jpg",
            // "images/i6.jpg",
            // "images/i7.jpg",
            // "images/i8.jpg",
            // "images/i9.jpg",
            // "images/i10.jpg",
            // "images/i11.jpg",
            // "images/i12.jpg",
            // "images/i13.jpg",
            // "images/i14.jpg",
            // "images/i15.jpg",
            // "images/i16.jpg",
            // "images/i17.jpg",
            // "images/i18.jpg",
            // "images/i19.jpg",
            // "images/i20.jpg",
            // "images/i21.jpg",
            // "images/i22.jpg",
            // "images/i23.jpg",
            // "images/i24.jpg",
          ];
          return FullscreenUrlImgViewer(urls: urls, index: _index);
        }),
      );
      if (newIndex != null) {
        _setIndex(newIndex, skipAnimation: true);
      }
    } else {
      _setIndex(index);
    }
  }

  // bool _checkCollectibleIndex(int index) {
  //   return index == _getCollectibleIndex() &&
  //       collectiblesLogic.isLost(widget.wonderType, 1);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // backgroundColor: Color.fromARGB(255, 115, 166, 255),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Blith in Pictures',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ValueListenableBuilder<List<String>>(
          valueListenable: _photoIds,
          builder: (_, value, __) {
            if (value.isEmpty) {
              return Center(child: AppLoadingIndicator());
            }

            // Size imgSize = (widget.imageSize ?? Size(context.widthPx * .66, context.heightPx * .5)) * _scale;
            Size imgSize = Size(300, 250);

            // Get transform offset for the current _index
            final padding = $styles.insets.md;
            // final padding = 20.0;
            // final padding2 = 24.0;

            var gridOffset = _calculateCurrentOffset(padding, imgSize);
            gridOffset += Offset(0, -context.mq.padding.top / 2);
            final offsetTweenDuration =
                _skipNextOffsetTween ? Duration.zero : swipeDuration;
            final cutoutTweenDuration =
                _skipNextOffsetTween ? Duration.zero : swipeDuration * .5;
            return _AnimatedCutoutOverlay(
              animationKey: ValueKey(_index),
              cutoutSize: imgSize,
              // cutoutSize: Size(100,200),
              swipeDir: _lastSwipeDir,
              duration: cutoutTweenDuration,
              opacity: _scale == 1 ? .7 : .5,
              child: SafeArea(
                bottom: false,
                // Place content in overflow box, to allow it to flow outside the parent
                child: OverflowBox(
                  maxWidth:
                      _gridSize * imgSize.width + padding * (_gridSize - 1),
                  // maxWidth: 300,
                  // maxWidth: 800,
                  maxHeight:
                      _gridSize * imgSize.height + padding * (_gridSize - 1),
                  // maxHeight: 300,
                  // alignment: Alignment.center,
                  // Detect swipes in order to change index
                  child: EightWaySwipeDetector(
                    onSwipe: _handleSwipe,
                    threshold: 30,
                    // A tween animation builder moves from image to image based on current offset
                    child: TweenAnimationBuilder<Offset>(
                      tween: Tween(begin: gridOffset, end: gridOffset),
                      duration: offsetTweenDuration,
                      curve: Curves.easeOut,
                      builder: (_, value, child) =>
                          Transform.translate(offset: value, child: child),
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: _gridSize,
                        childAspectRatio: imgSize.aspectRatio,
                        // childAspectRatio: 0.5,
                        mainAxisSpacing: padding,
                        // mainAxisSpacing: 10,
                        crossAxisSpacing: padding,
                        // crossAxisSpacing: 10,
                        children: List.generate(_imgCount,
                            (i) => _buildImage(i, swipeDuration, imgSize)),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget _buildImage(int index, Duration swipeDuration, Size imgSize) {
    // bool selected = index == _index;
    //       // final imgUrl = _photoIds.value[index];
    //       // final imgUrl = 'images/i${index + 1}.jpg';
    //       final imgUrl = urls[index];
    /// Bind to collectibles.statesById because we might need to rebuild if a collectible is found.
    ///
    ///
    return Builder(builder: (BuildContext) {
      bool selected = index == _index;
      // final imgUrl = _photoIds.value[index];
      // final imgUrl = 'images/i${index + 1}.jpg';
      final imgUrl = urls[index];
      late String semanticLbl;
      // if (_checkCollectibleIndex(index)) {
      //   semanticLbl = 'collectible item';
      // } else {
      semanticLbl = !selected
          ? StringUtils.supplant(
              'Photo {photoIndex} of {photoTotal}. Tap to focus.', {
              '{photoIndex}': (index + 1).toString(),
              '{photoTotal}': _imgCount.toString(),
            })
          : StringUtils.supplant(
              'Photo {photoIndex} of {photoTotal}. Tap to open fullscreen view.',
              {
                  '{photoIndex}': (index + 1).toString(),
                  '{photoTotal}': _imgCount.toString(),
                });
      return MergeSemantics(
        child: Semantics(
          focused: selected,
          liveRegion: selected,
          onIncrease: () => _handleImageTapped(_index + 1),
          onDecrease: () => _handleImageTapped(_index - 1),
          child: AppBtn.basic(
            semanticLabel: semanticLbl,
            //   // onPressed: () {
            //   //   if (_checkCollectibleIndex(index) && selected) return;
            //   //   _handleImageTapped(index);
            //   // },
            onPressed: () {
              _handleImageTapped(index);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: imgSize.width,
                // width: 300,
                // width: 100,
                height: imgSize.height,
                // height: 400,
                // height: 350,
                // height: 200,
                // height: 250,
                child: TweenAnimationBuilder<double>(
                  duration: $styles.times.med,
                  curve: Curves.easeOut,
                  tween: Tween(begin: 1, end: selected ? 1.15 : 1),
                  builder: (_, value, child) =>
                      Transform.scale(scale: value, child: child),
                  // child: UnsplashPhoto(
                  //   imgUrl,
                  //   fit: BoxFit.cover,
                  //   size: UnsplashPhotoSize.med,
                  // ).animate().fade(),
                  // child: Image.network(
                  //   imgUrl,
                  //   fit: BoxFit.cover,
                  //   // size: UnsplashPhotoSize.med,
                  // ).animate().fade(),
                  child: Image.asset(
                    imgUrl,
                    fit: BoxFit.cover,
                    // fit: BoxFit.scaleDown,
                    // fit: BoxFit.fitWidth,
                    // fit: BoxFit.fitHeight,
                  ).animate().fade(),
                  // child: AssetImage(imgUrl).animate().fade(),
                ),
              ),
            ),
          ),
        ),
      );
      //   ),
      // ),
    });
    //return ValueListenableBuilder(
    // // valueListenable: ,
    //   valueListenable: collectiblesLogic.statesById,
    //   builder: (_, __, ___) {
    //     bool selected = index == _index;
    //     // final imgUrl = _photoIds.value[index];
    //     // final imgUrl = 'images/i${index + 1}.jpg';
    //     final imgUrl = urls[index];

    //     late String semanticLbl;
    //     // if (_checkCollectibleIndex(index)) {
    //     //   semanticLbl = 'collectible item';
    //     // } else {
    //       semanticLbl = !selected
    //           ? StringUtils.supplant(
    //               'Photo {photoIndex} of {photoTotal}. Tap to focus.', {
    //               '{photoIndex}': (index + 1).toString(),
    //               '{photoTotal}': _imgCount.toString(),
    //             })
    //           : StringUtils.supplant(
    //               'Photo {photoIndex} of {photoTotal}. Tap to open fullscreen view.',
    //               {
    //                   '{photoIndex}': (index + 1).toString(),
    //                   '{photoTotal}': _imgCount.toString(),
    //                 });
    //     // }
    //     return MergeSemantics(
    //       child: Semantics(
    //         focused: selected,
    //         // image: !_checkCollectibleIndex(index),
    //         liveRegion: selected,
    //         onIncrease: () => _handleImageTapped(_index + 1),
    //         onDecrease: () => _handleImageTapped(_index - 1),
    //         child: AppBtn.basic(
    //           semanticLabel: semanticLbl,
    //           // onPressed: () {
    //           //   if (_checkCollectibleIndex(index) && selected) return;
    //           //   _handleImageTapped(index);
    //           // },
    //           onPressed: (){},
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.circular(8),
    //             child: SizedBox(
    //               width: imgSize.width,
    //               // width: 300,
    //               // width: 100,
    //               height: imgSize.height - 100,
    //               // height: 400,
    //               // height: 350,
    //               // height: 200,
    //               // height: 250,
    //               child: TweenAnimationBuilder<double>(
    //                 duration: $styles.times.med,
    //                 curve: Curves.easeOut,
    //                 tween: Tween(begin: 1, end: selected ? 1.15 : 1),
    //                 builder: (_, value, child) =>
    //                     Transform.scale(scale: value, child: child),
    //                 // child: UnsplashPhoto(
    //                 //   imgUrl,
    //                 //   fit: BoxFit.cover,
    //                 //   size: UnsplashPhotoSize.med,
    //                 // ).animate().fade(),
    //                 // child: Image.network(
    //                 //   imgUrl,
    //                 //   fit: BoxFit.cover,
    //                 //   // size: UnsplashPhotoSize.med,
    //                 // ).animate().fade(),
    //                 child: Image.asset(
    //                   imgUrl,
    //                   fit: BoxFit.cover,
    //                   // fit: BoxFit.scaleDown,
    //                   // fit: BoxFit.fitWidth,
    //                   // fit: BoxFit.fitHeight,
    //                 ).animate().fade(),
    //                 // child: AssetImage(imgUrl).animate().fade(),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     );
    //   });
    // return ValueListenableBuilder(
    //   // valueListenable: ,
    //     valueListenable: collectiblesLogic.statesById,
    //     builder: (_, __, ___) {
    //       bool selected = index == _index;
    //       // final imgUrl = _photoIds.value[index];
    //       // final imgUrl = 'images/i${index + 1}.jpg';
    //       final imgUrl = urls[index];

    //       late String semanticLbl;
    //       // if (_checkCollectibleIndex(index)) {
    //       //   semanticLbl = 'collectible item';
    //       // } else {
    //         semanticLbl = !selected
    //             ? StringUtils.supplant(
    //                 'Photo {photoIndex} of {photoTotal}. Tap to focus.', {
    //                 '{photoIndex}': (index + 1).toString(),
    //                 '{photoTotal}': _imgCount.toString(),
    //               })
    //             : StringUtils.supplant(
    //                 'Photo {photoIndex} of {photoTotal}. Tap to open fullscreen view.',
    //                 {
    //                     '{photoIndex}': (index + 1).toString(),
    //                     '{photoTotal}': _imgCount.toString(),
    //                   });
    //       // }
    //       return MergeSemantics(
    //         child: Semantics(
    //           focused: selected,
    //           // image: !_checkCollectibleIndex(index),
    //           liveRegion: selected,
    //           onIncrease: () => _handleImageTapped(_index + 1),
    //           onDecrease: () => _handleImageTapped(_index - 1),
    //           child: AppBtn.basic(
    //             semanticLabel: semanticLbl,
    //             // onPressed: () {
    //             //   if (_checkCollectibleIndex(index) && selected) return;
    //             //   _handleImageTapped(index);
    //             // },
    //             onPressed: (){},
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(8),
    //               child: SizedBox(
    //                 width: imgSize.width,
    //                 // width: 300,
    //                 // width: 100,
    //                 height: imgSize.height - 100,
    //                 // height: 400,
    //                 // height: 350,
    //                 // height: 200,
    //                 // height: 250,
    //                 child: TweenAnimationBuilder<double>(
    //                   duration: $styles.times.med,
    //                   curve: Curves.easeOut,
    //                   tween: Tween(begin: 1, end: selected ? 1.15 : 1),
    //                   builder: (_, value, child) =>
    //                       Transform.scale(scale: value, child: child),
    //                   // child: UnsplashPhoto(
    //                   //   imgUrl,
    //                   //   fit: BoxFit.cover,
    //                   //   size: UnsplashPhotoSize.med,
    //                   // ).animate().fade(),
    //                   // child: Image.network(
    //                   //   imgUrl,
    //                   //   fit: BoxFit.cover,
    //                   //   // size: UnsplashPhotoSize.med,
    //                   // ).animate().fade(),
    //                   child: Image.asset(
    //                     imgUrl,
    //                     fit: BoxFit.cover,
    //                     // fit: BoxFit.scaleDown,
    //                     // fit: BoxFit.fitWidth,
    //                     // fit: BoxFit.fitHeight,
    //                   ).animate().fade(),
    //                   // child: AssetImage(imgUrl).animate().fade(),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     });
  }
}
