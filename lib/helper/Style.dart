


import 'package:flutter/material.dart';

class FdStyle {
  static TextStyle sofia(
      {double fontSize = 16,
        fontFamily = 'Sofia pro',
        color = Colors.black,
        double letterSpace = 0.0,
        fontWeight = FontWeight.w400,
        fontStyle = FontStyle.normal}) {
    return TextStyle(
        fontSize: fontSize,
        letterSpacing: letterSpace,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight,
        fontStyle: fontStyle);
  }

}
