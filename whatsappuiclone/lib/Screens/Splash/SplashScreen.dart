import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Screens/OnBoarding/OnBoardingScreen.dart';
import 'package:whatsappuiclone/Widgets/UiHelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Uihelper.CustomImage(imgurl: 'whatsapp.png'),
          SizedBox(height: 10),
          Uihelper.CustomText(
              text: 'Whatsapp', height: 22, fontweight: FontWeight.bold)
        ],
      ),
    ));
  }
}
