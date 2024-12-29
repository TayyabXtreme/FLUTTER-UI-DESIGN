import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CutomText(
      {required String text,
      required Color color,
      required FontWeight fontWeight,
      String? fontFamily,
      required double fontSize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily ?? "regular",
          fontWeight: fontWeight,
          color: color),
    );
  }
}
