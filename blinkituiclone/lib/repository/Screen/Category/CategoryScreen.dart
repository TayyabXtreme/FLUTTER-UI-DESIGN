import 'package:blinkituiclone/domain/contants/appcolors.dart';
import 'package:blinkituiclone/repository/widgets/Uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
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
              color: AppColors.scaffoldbackground,
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
                          color: Colors.black,
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
                          color: Colors.black,
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
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                      UiHelper.CutomText(
                          text: '- Sujal Dave, Ratanada, Jodhpur (Raj)',
                          color: Colors.black,
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
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            UiHelper.CutomText(
                text: 'Grocery & Kitchen',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: 'bold')
          ],
        )
      ]),
    ));
  }
}
