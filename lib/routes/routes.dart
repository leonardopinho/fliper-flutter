import 'package:fliper/components/transitions/slide_right_left.dart';
import 'package:fliper/views/detail.dart';
import 'package:flutter/material.dart';

class Routes {
  static void goToDetailPage(BuildContext context) async {
    Navigator.pushReplacement(context, SlideRightLeft(page: Detail()));
  }
}
