import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RefractedSvgIconWidget extends StatelessWidget {
   const RefractedSvgIconWidget({
    Key? key,
    required this.svgImage,
    required this.iconSize,
     this.circleSize = 23
  }) : super(key: key);

  final String svgImage;
  final double iconSize;
  final double? circleSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: circleSize,
      backgroundColor: Colors.white,
      child: SvgPicture.asset(
        svgImage,
        width: iconSize,
        height: iconSize,
      ),
    );
  }
}
