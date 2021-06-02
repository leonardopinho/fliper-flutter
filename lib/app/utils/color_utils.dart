import 'package:flutter/material.dart';

class ColorUtils {
  static Color fromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
