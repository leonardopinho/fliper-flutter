import 'package:flutter/material.dart';
import 'color_utils.dart';

class Themes {
  static ThemeData lightTheme = new ThemeData(colorScheme: ColorScheme.light(), primaryColor: Colors.white, backgroundColor: Colors.white, buttonColor: Colors.black, unselectedWidgetColor: Colors.white, primaryTextTheme: new TextTheme(caption: new TextStyle(fontFamily: 'Metropolis', color: Colors.white)));
  static ThemeData darkTheme = new ThemeData(brightness: Brightness.dark, buttonColor: Colors.white, unselectedWidgetColor: Colors.white, primaryTextTheme: new TextTheme(caption: new TextStyle(fontFamily: 'Metropolis', color: Colors.white)));
}
