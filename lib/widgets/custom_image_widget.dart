import 'package:flutter/material.dart';

class CustomCircleImageWidget extends StatelessWidget {
  const CustomCircleImageWidget({
    Key? key,
    required this.backGrdColor,
    required this.radius,
    required this.imageAsset,
  }) : super(key: key);

  final Color backGrdColor;
  final double radius;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backGrdColor,
      radius: radius,
      child: Image(image: AssetImage(imageAsset)),
    );
  }
}
