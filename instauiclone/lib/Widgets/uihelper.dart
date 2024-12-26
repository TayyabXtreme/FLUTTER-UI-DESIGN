import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType textinputtype,
  }) {
    return Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
            color: Color(0xff121212),
            border: Border.all(color: Colors.white24),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
            padding: EdgeInsets.only(left: 16),
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
            )));
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

  static CustomTextButton(
      {required VoidCallback callback, required String text}) {
    return TextButton(
        onPressed: callback,
        child: Text(
          text,
          style: TextStyle(color: Color(0xff3797EF), fontSize: 12),
        ));
  }

  static CustomButton(
      {required VoidCallback callback, required String buttonName}) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(
          onPressed: callback,
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff3797ef),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: Text(
            buttonName,
            style: TextStyle(fontSize: 14, color: Colors.white),
          )),
    );
  }
}
