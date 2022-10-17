import 'package:flutter/material.dart';
import 'package:project_mypcot/constends/sized_box.dart';
import 'package:project_mypcot/constends/text_style.dart';
import 'package:project_mypcot/widgets/custom_image_widget.dart';

class BottomOrderBanner extends StatelessWidget {
  const BottomOrderBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    refractedText("New order created",
                        const Color(0xff2c3d63).withOpacity(.7),
                        weight: FontWeight.bold),
                    const SizedBox(
                      height: 10,
                    ),
                    refractedText("New order created with order",
                        const Color(0xff2c3d63).withOpacity(.7),
                        size: 15),
                    sectionBox,
                    refractedText("09:00AM", const Color(0xfffe804e), size: 15),
                    stdHeightBox,
                    const Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Color(0xfffe804e),
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomCircleImageWidget(
                    backGrdColor: Color(0xfffe804e),
                    radius: 35,
                    imageAsset: "assets/figma_order_history.png"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
