import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instauiclone/Screen/login/loginScreen.dart';
import 'package:instauiclone/Widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
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
          UiHelper.CustomImage(imgUrl: 'instagram.png'),
          UiHelper.CustomImage(
              imgUrl: 'instagramlogo.png', width: 150, height: 150),
        ],
      )),
    );
  }
}
