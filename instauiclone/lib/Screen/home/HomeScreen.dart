import 'package:flutter/material.dart';
import 'package:instauiclone/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black12,
        leading:
            UiHelper.CustomImage(imgUrl: 'camera.png', width: 24, height: 24),
        title: UiHelper.CustomImage(
            imgUrl: 'instagramlogo.png', width: 100, height: 100),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.tv)),
          IconButton(onPressed: () {}, icon: Icon(Icons.share))
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
