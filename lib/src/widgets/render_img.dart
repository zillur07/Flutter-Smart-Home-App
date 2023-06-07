import 'package:flutter/material.dart';
import '../config/constants.dart';

class RenderImg extends StatelessWidget {
  final String path;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit? fit;
  RenderImg(
      {required this.path, this.fit, this.height, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      '${Constants.imgPath}/$path',
      height: height,
      width: width,
      fit: fit,
    );
  }
}
