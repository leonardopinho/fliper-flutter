import 'dart:math';

import 'package:flutter/material.dart';

class Helper {
  static int getRandomByRange({int start = 0, int end = 10}) {
    var random = new Random();
    return random.nextInt(end) + start;
  }

  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getDeviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
