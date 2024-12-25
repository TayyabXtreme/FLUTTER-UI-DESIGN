import 'dart:ffi';

import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType textinputtype,
  }) {
    return Container(
        color: Color(0xff121212),
        height: 44,
        width: 343,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(5)),
        child: TextField(
          controller: controller,
          obscureText: tohide,
          keyboardType: textinputtype,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: text,
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.white)),
        ));
  }

  static CustomImage(
      {required String imgUrl,
      double width = 0.0,
      double height = 0.0,
      Color color = Colors.white}) {
    if (width == 0.0 && height == 0.0) {
      return Image.asset(
        "assets/images/$imgUrl",
      );
    } else {
      return Image.asset(
        "assets/images/$imgUrl",
        width: width,
        height: height,
        color: color,
      );
    }
  }
}
