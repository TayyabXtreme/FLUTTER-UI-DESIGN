import 'package:blinkituiclone/repository/Screen/Cart/CartScreen.dart';
import 'package:blinkituiclone/repository/Screen/Category/CategoryScreen.dart';
import 'package:blinkituiclone/repository/Screen/Home/HomeScreen.dart';
import 'package:blinkituiclone/repository/Screen/Print/PrintScreen.dart';
import 'package:blinkituiclone/repository/widgets/Uihelper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: 'home 1.png'), label: 'Home'),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: 'shopping-bag 1.png'),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: 'category 1.png'),
              label: 'Categories'),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: 'printer 1.png'), label: 'Print'),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
