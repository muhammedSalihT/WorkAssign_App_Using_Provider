import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:project_mypcot/utils/utils.dart' as date_util;

class HomeScreenProvider extends ChangeNotifier {
  final String assetName = 'assets/image.svg';
  late ScrollController scrollController;
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();
  bool? visible = false;
  int? currday;

  HomeScreenProvider() {
    currday = currentDateTime.day.toInt();
    currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
    currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    currentMonthList = currentMonthList.toSet().toList();
    scrollController =
        ScrollController(initialScrollOffset: 70.0 * currentDateTime.day);
  }

  ondateTap(int index) {
    currday = currentMonthList[index].day;
    log(currday.toString());
    notifyListeners();
  }
}
