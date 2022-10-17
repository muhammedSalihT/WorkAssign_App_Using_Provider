import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RefractedBottomNavIconWidget extends StatelessWidget {
  const RefractedBottomNavIconWidget({
    Key? key,
    required this.svgImage,
    required this.title,
  }) : super(key: key);

  final String svgImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [SvgPicture.asset(svgImage), Text(title)],
    );
  }
}
