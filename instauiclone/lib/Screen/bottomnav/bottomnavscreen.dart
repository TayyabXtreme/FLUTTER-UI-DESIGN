import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instauiclone/Screen/heart/heartscreen.dart';
import 'package:instauiclone/Screen/home/HomeScreen.dart';
import 'package:instauiclone/Screen/post/postscreen.dart';
import 'package:instauiclone/Screen/profile/profilescreen.dart';
import 'package:instauiclone/Screen/search/searchscreen.dart';
import 'package:instauiclone/Widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    HeartScreen(),
    Profilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.plus_app), label: 'Post Add'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: 'heart'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: 'Profile')
        ],
      ),
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}
