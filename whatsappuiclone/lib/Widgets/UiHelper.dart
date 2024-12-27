import 'package:flutter/material.dart';

class Uihelper {
  static CustomButton(
      {required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 35,
      width: 300,
      child: ElevatedButton(
          onPressed: callback,
          child: Text(
            buttonname,
            style: TextStyle(color: Colors.white, fontSize: 14),
          )),
    );
  }

  static CustomText(
      {required String text,
      required double height,
      Color? color,
      FontWeight? fontweight}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: height,
          color: color ?? Color(0xff5e5e5e),
          fontWeight: fontweight ?? FontWeight.normal),
    );
  }
}
