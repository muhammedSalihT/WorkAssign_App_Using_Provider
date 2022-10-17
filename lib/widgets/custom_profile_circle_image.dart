import 'package:flutter/material.dart';

class CustomProfileImageWidget extends StatelessWidget {
  const CustomProfileImageWidget({
    Key? key, required this.radius, required this.backGrdColor, required this.assetImage,
  }) : super(key: key);

  final double radius;
  final Color backGrdColor;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: radius,
      backgroundColor:backGrdColor,
      child: CircleAvatar(
        backgroundImage: AssetImage(assetImage),
      ),
    );
  }
}
