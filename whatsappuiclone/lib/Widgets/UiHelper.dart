import 'package:flutter/material.dart';

class Uihelper {
  static CustomButton(
      {required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 45,
      width: 300,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
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

  static CustomImage({required imgurl}) {
    return Image.asset('assets/images/$imgurl');
  }

  static CustomContainers(TextEditingController controller) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xffd9d9d9)),
      child: Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(border: InputBorder.none),
          )),
    );
  }
}
