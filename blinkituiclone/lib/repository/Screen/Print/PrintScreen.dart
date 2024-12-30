import 'package:blinkituiclone/domain/contants/appcolors.dart';
import 'package:blinkituiclone/repository/widgets/Uihelper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  PrintScreen({super.key});
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFBF0CE),
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
            UiHelper.CutomText(
                text: 'Print Store',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 39,
                fontFamily: 'bold'),
            UiHelper.CutomText(
                text: 'Blinkit ensures secure prints at every stage',
                color: Color(0xff8C9C9C),
                fontWeight: FontWeight.bold,
                fontSize: 13),
            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Container(
                  width: 320,
                  height: 173,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              UiHelper.CutomText(
                                  text: 'Documents',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)
                            ],
                          ),
                          Row(
                            children: [
                              UiHelper.CustomImage(img: 'star.png'),
                              SizedBox(
                                width: 10,
                              ),
                              UiHelper.CutomText(
                                  text: 'Price starting at rs 3/page',
                                  color: Color(0xff9C9C9C),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13)
                            ],
                          ),
                          Row(
                            children: [
                              UiHelper.CustomImage(img: 'star.png'),
                              SizedBox(
                                width: 10,
                              ),
                              UiHelper.CutomText(
                                  text: 'Paper quality: 70 GSM',
                                  color: Color(0xff9C9C9C),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13)
                            ],
                          ),
                          Row(
                            children: [
                              UiHelper.CustomImage(img: 'star.png'),
                              SizedBox(
                                width: 10,
                              ),
                              UiHelper.CutomText(
                                  text: 'Single side prints',
                                  color: Color(0xff9C9C9C),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13)
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 125,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xff27AF34),
                                ),
                                child: Center(
                                  child: Text(
                                    'Upload Files',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
                Positioned(
                    bottom: 30,
                    right: 20,
                    child: UiHelper.CustomImage(img: 'book.png'))
              ],
            )
          ]),
        ));
  }
}
