import 'package:flutter/material.dart';
import 'package:project_mypcot/constends/text_style.dart';
import 'package:project_mypcot/screens/home/providers/homescreen_controller.dart';
import 'package:provider/provider.dart';
import 'package:project_mypcot/utils/utils.dart' as date_util;


class HorizontalDateView extends StatelessWidget {
  const HorizontalDateView({
    Key? key, required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(builder: (context, value, _) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            value.ondateTap(index);
          },
          child: Consumer<HomeScreenProvider>(builder: (context, value, _) {
            return SizedBox(
              width: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  refractedText(
                      date_util.DateUtils
                          .weekdays[value.currentMonthList[index].weekday - 1]
                          .substring(0, 3),
                      value.currentMonthList[index].day !=
                              value.currday
                          ? const Color(0xff2c3d63).withOpacity(.4)
                          : const Color(0xff0f8181),
                      size: 18),
                  refractedText(
                      value.currentMonthList[index].day.toString(),
                      value.currentMonthList[index].day !=
                              value.currday
                          ? Colors.black.withOpacity(.7)
                          : const Color(0xff0f8181),
                      size: 18,
                      weight: FontWeight.bold),
                  const SizedBox(
                    height: 5,
                  ),
                  Visibility(
                    visible:
                        (value.currentMonthList[index].day != value.currday)
                            ? false
                            : true,
                    child: const CircleAvatar(
                        radius: 5, backgroundColor: Color(0xff0f8181)),
                  )
                ],
              ),
            );
          }),
        ),
      );
    });
  }
}
