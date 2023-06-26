import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:image_fade/image_fade.dart';
// import 'package:wonders/common_libs.dart';
import 'package:bottom_navigation_bar/photo_gallery/retry_image.dart';
import 'package:bottom_navigation_bar/photo_gallery/styles.dart';
import 'package:bottom_navigation_bar/photo_gallery/app_loading_indicator.dart';

class AppImage2 extends StatefulWidget {
  const AppImage2({
    Key? key,
    required this.image,
    this.fit = BoxFit.scaleDown,
    this.alignment = Alignment.center,
    this.duration,
    this.syncDuration,
    this.distractor = false,
    this.progress = false,
    this.color,
    this.scale,
  }) : super(key: key);

  final Image? image;
  final BoxFit fit;
  final Alignment alignment;
  final Duration? duration;
  final Duration? syncDuration;
  final bool distractor;
  final bool progress;
  final Color? color;
  final double? scale;

  @override
  State<AppImage2> createState() => _AppImage2State();
}

class _AppImage2State extends State<AppImage2> {
  Image? _displayImage;
  Image? _sourceImage;

  @override
  void didChangeDependencies() {
    _updateImage();
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(AppImage2 oldWidget) {
    _updateImage();
    super.didUpdateWidget(oldWidget);
  }

  void _updateImage() {
    if (widget.image == _sourceImage) return;
    _sourceImage = widget.image;
    // _displayImage = _capImageSize(_addRetry(_sourceImage));
    _displayImage = _sourceImage;
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: _displayImage);
    // return ImageFade(
    //   image: _displayImage,
    //   fit: widget.fit,
    //   alignment: widget.alignment,
    //   duration: widget.duration ?? $styles.times.fast,
    //   syncDuration: widget.syncDuration ?? 0.ms,
    //   loadingBuilder: (_, value, ___) {
    //     if (!widget.distractor && !widget.progress) return SizedBox();
    //     return Center(child: AppLoadingIndicator(value: widget.progress ? value : null, color: widget.color));
    //   },
    //   errorBuilder: (_, __) => Container(
    //     padding: EdgeInsets.all($styles.insets.xs),
    //     alignment: Alignment.center,
    //     child: LayoutBuilder(builder: (_, constraints) {
    //       double size = min(constraints.biggest.width, constraints.biggest.height);
    //       if (size < 16) return SizedBox();
    //       return Icon(
    //         Icons.image_not_supported_outlined,
    //         color: $styles.colors.white.withOpacity(0.1),
    //         size: min(size, $styles.insets.lg),
    //       );
    //     }),
    //   ),
    // );
  }

  ImageProvider? _addRetry(ImageProvider? image) {
    return image == null ? image : RetryImage(image);
  }

  ImageProvider? _capImageSize(ImageProvider? image) {
    if (image == null || widget.scale == null) return image;
    final MediaQueryData mq = MediaQuery.of(context);
    final Size screenSize = mq.size * mq.devicePixelRatio * widget.scale!;
    return ResizeImage(image, width: screenSize.width.round());
  }
}
