import 'package:blinkituiclone/domain/contants/appcolors.dart';
import 'package:blinkituiclone/repository/widgets/Uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 40,
        ),
        Stack(
          children: [
            Container(
              height: 190,
              width: double.infinity,
              color: Color(0xffEC0505),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      UiHelper.CutomText(
                          text: 'Blinkit in',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'bold',
                          fontSize: 14),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      UiHelper.CutomText(
                          text: '16 minute',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'bold',
                          fontSize: 20),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      UiHelper.CutomText(
                          text: 'Home ',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                      UiHelper.CutomText(
                          text: '- Sujal Dave, Ratanada, Jodhpur (Raj)',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  UiHelper.CutomTextField(controller: searchController),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 80,
              child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: UiHelper.CustomImage(img: 'user.png')),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 0.9,
          color: Colors.white,
        ),
        Container(
          width: double.infinity,
          height: 196,
          color: Color(0xffEC0505),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  UiHelper.CustomImage(img: 'crak1.png'),
                  UiHelper.CustomImage(img: 'crak2.png'),
                  UiHelper.CutomText(
                      text: 'Mega Diwali Sale',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  UiHelper.CustomImage(img: 'crak2.png'),
                  UiHelper.CustomImage(img: 'crak1.png'),
                ],
              )
            ],
          ),
        )
      ]),
    ));
  }
}
