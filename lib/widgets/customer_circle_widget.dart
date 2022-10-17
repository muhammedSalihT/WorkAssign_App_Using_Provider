import 'package:flutter/material.dart';
import 'package:project_mypcot/widgets/custom_profile_circle_image.dart';

class CustomerCircleWidget extends StatelessWidget {
  const CustomerCircleWidget({
    Key? key,
    required this.leftDistence,
    required this.topDistence,
  }) : super(key: key);

  final double leftDistence;
  final double topDistence;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftDistence, top: topDistence),
      child: const CustomProfileImageWidget(
          radius: 23,
          backGrdColor: Color(0xffffffff),
          assetImage: "assets/images.jpeg"),
    );
  }
}
