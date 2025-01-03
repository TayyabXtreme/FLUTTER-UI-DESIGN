import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Screens/Splash/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff00A884)),
          useMaterial3: false,
          fontFamily: "Regular"),
      home: Splashscreen(),
    );
  }
}
