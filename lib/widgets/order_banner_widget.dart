import 'package:flutter/material.dart';
import 'package:project_mypcot/constends/order_banner%20_const_widgets.dart';
import 'package:project_mypcot/constends/sized_box.dart';
import 'package:project_mypcot/constends/text_style.dart';
import 'package:project_mypcot/widgets/customer_circle_widget.dart';
import 'package:project_mypcot/widgets/refracted_svgicon_widget.dart';

class OrderBannerWidget extends StatelessWidget {
  const OrderBannerWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(right: 30, top: 7),
            child: Container(
              width: size.width * .92,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: bannerColor[index]),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: SizedBox(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RefractedSvgIconWidget(
                          svgImage: bannerIconList[index],
                          iconSize: 110,
                          circleSize: 55,
                        ),
                        sectionBox,
                        SizedBox(
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: buttonColor[index],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              child: Text(buttonText[index]),
                            ))
                      ],
                    )),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 130),
                            child: Container(
                              height: 80,
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  sectionBox,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      refractedText(
                                          "02", const Color(0xff2c3d63),
                                          weight: FontWeight.bold),
                                      stdWidthBox,
                                      refractedText(
                                          "pending",
                                          const Color(0xff2c3d63)
                                              .withOpacity(.6),
                                          size: 15),
                                    ],
                                  ),
                                  refractedText(
                                      "Orders from", const Color(0xff2c3d63),
                                      size: 15),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 150),
          child: Container(
            height: 80,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xfffe804e),
            ),
            child: Column(
              children: [
                sectionBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(children: [
                      refractedText("You have ", const Color(0xffffffff),
                          size: 15),
                      refractedText("3 ", const Color(0xffffffff),
                          weight: FontWeight.bold, size: 25),
                      refractedText("active", const Color(0xffffffff), size: 15)
                    ]),
                  ],
                ),
                refractedText("Orders from", const Color(0xffffffff), size: 15)
              ],
            ),
          ),
        ),
        const CustomerCircleWidget(leftDistence: 170, topDistence: 70),
        const CustomerCircleWidget(leftDistence: 200, topDistence: 70),
        const CustomerCircleWidget(leftDistence: 230, topDistence: 70),
        const CustomerCircleWidget(leftDistence: 200, topDistence: 205),
        const CustomerCircleWidget(leftDistence: 230, topDistence: 205)
      ],
    );
  }
}
