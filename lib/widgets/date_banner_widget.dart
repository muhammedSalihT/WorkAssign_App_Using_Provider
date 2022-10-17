import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_mypcot/constends/text_style.dart';
import 'package:project_mypcot/screens/home/providers/homescreen_controller.dart';
import 'package:provider/provider.dart';
import 'package:project_mypcot/utils/utils.dart' as date_util;


class DateBannerWidget extends StatelessWidget {
  const DateBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(
      builder: (context,value,_) {
        return SizedBox(
          height: 100,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                        child: Row(
                      children: [
                        refractedText(
                            "${date_util.DateUtils.months[value.currentDateTime.month]},",
                            const Color(0xff2c3d63).withOpacity(.8)),
                        const SizedBox(
                          width: 2,
                        ),
                        refractedText(value.currday!.toString(),
                            const Color(0xff2c3d63).withOpacity(.8)),
                        const SizedBox(
                          width: 4,
                        ),
                        refractedText(
                            value.currentDateTime.year.toString(),
                            const Color(0xff2c3d63).withOpacity(.8))
                      ],
                    )),
                    const SizedBox(
                      height: 5,
                    ),
                    refractedText(
                        value.currday != value.currentDateTime.day
                            ? date_util.DateUtils.weekdays[value
                                    .currentMonthList[
                                        value.currday! - 1]
                                    .weekday -
                                1]
                            : "Today",
                        const Color(0xff2c3d63).withOpacity(.8),
                        weight: FontWeight.bold)
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      iconSize: 30,
                      style: const TextStyle(color: Color(0xff2c3d63)),
                      items: <String>[
                        'A',
                        'B',
                        'C',
                        'D',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      hint: refractedText(
                          "TIMELINE", const Color(0xff2c3d63),
                          size: 15),
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset("assets/calenderIcon.svg",
                          width: 15),
                      refractedText(
                          "${date_util.DateUtils.months[value.currentDateTime.month]},"
                              .substring(0, 3),
                          const Color(0xff2c3d63).withOpacity(.9),
                          weight: FontWeight.bold,
                          size: 15),
                      refractedText(
                          value.currentDateTime.year.toString(),
                          const Color(0xff2c3d63).withOpacity(.9),
                          weight: FontWeight.bold,
                          size: 15)
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
