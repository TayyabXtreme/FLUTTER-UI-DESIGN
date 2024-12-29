import 'package:blinkituiclone/repository/Screen/BottomNav/BottomNavScreen.dart';
import 'package:blinkituiclone/repository/widgets/Uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/loginScreenpanal.png',
            fit: BoxFit.cover,
            width: 300,
            height: 240,
          ),
          SizedBox(
            height: 10,
          ),
          UiHelper.CustomImage(img: 'logo2.png'),
          SizedBox(
            height: 10,
          ),
          UiHelper.CutomText(
              text: 'India’s last minute app',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'bold'),
          SizedBox(
            height: 20,
          ),
          Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                  width: 330,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      UiHelper.CutomText(
                          text: 'Sujal',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      SizedBox(
                        height: 5,
                      ),
                      UiHelper.CutomText(
                          text: '78277XXXX',
                          color: Color(0xff9c9c9c),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'bold'),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 48,
                        width: 295,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BottomNavScreen(),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffe23744),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.CutomText(
                                    text: 'Login with',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: 'bold'),
                                SizedBox(
                                  width: 5,
                                ),
                                UiHelper.CustomImage(img: 'zomato.png')
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      UiHelper.CutomText(
                          text:
                              'Access your saved addresses from Zomato automatically!',
                          color: Color(0xff9c9c9c),
                          fontWeight: FontWeight.normal,
                          fontSize: 10),
                      SizedBox(
                        height: 15,
                      ),
                      UiHelper.CutomText(
                          text: 'or login with phone number',
                          color: Color(0xff269237),
                          fontWeight: FontWeight.normal,
                          fontSize: 14)
                    ],
                  ))),
        ],
      )),
    );
  }
}
