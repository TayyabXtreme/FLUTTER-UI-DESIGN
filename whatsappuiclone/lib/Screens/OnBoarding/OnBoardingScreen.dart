import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Screens/Login/LoginScreen.dart';
import 'package:whatsappuiclone/Widgets/UiHelper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(imgurl: 'whatsappload.png'),
            SizedBox(
              height: 20,
            ),
            Uihelper.CustomText(
                text: 'Welcome to Whatsapp',
                height: 20,
                color: Color(0xff000000)),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: "Read out ", height: 14),
                Uihelper.CustomText(
                    text: "Privacy Policy",
                    height: 14,
                    color: Color(0xff0c42cc)),
                Uihelper.CustomText(
                  text: " Tap \"Agree and continue\"",
                  height: 14,
                ),
              ],
            ),
            Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Uihelper.CustomText(
                text: "to accept the ",
                height: 14,
              ),
              Uihelper.CustomText(
                  text: "Teams of Service. ",
                  height: 14,
                  color: Color(0xff0c42cc)),
            ]))
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
          callback: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
          },
          buttonname: 'Agree and continue'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
