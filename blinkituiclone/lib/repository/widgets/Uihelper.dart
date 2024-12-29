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

  static CutomTextField({required TextEditingController controller}) {
    return Container(
      height: 37,
      width: 326,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Color(0xffC5C5C5))),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: "Search 'ice-cream",
            prefixIcon: UiHelper.CustomImage(img: 'search.png'),
            suffixIcon: UiHelper.CustomImage(img: 'mic.png'),
            border: InputBorder.none),
      ),
    );
  }

  static CustomButton(VoidCallback callback) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Color(0xff27af34))),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(fontSize: 8, color: Color(0xff27af34)),
        ),
      ),
    );
  }
}
