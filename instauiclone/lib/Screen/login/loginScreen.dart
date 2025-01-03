import 'package:flutter/material.dart';
import 'package:instauiclone/Screen/SingUp/signupscreen.dart';
import 'package:instauiclone/Screen/bottomnav/bottomnavscreen.dart';
import 'package:instauiclone/Widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        UiHelper.CustomImage(
            imgUrl: 'instagramlogo.png', width: 150, height: 150),
        UiHelper.CustomTextField(
            controller: emailController,
            text: "Email",
            tohide: false,
            textinputtype: TextInputType.emailAddress),
        SizedBox(
          height: 10,
        ),
        UiHelper.CustomTextField(
            controller: passwordController,
            text: "Password",
            tohide: true,
            textinputtype: TextInputType.text),
        SizedBox(
          height: 5,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: UiHelper.CustomTextButton(
                callback: () {}, text: 'Fogot password?'),
          )
        ]),
        SizedBox(
          height: 10,
        ),
        UiHelper.CustomButton(
            callback: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavScreen(),
                  ));
            },
            buttonName: 'Login'),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/instagram.png'),
            UiHelper.CustomTextButton(
                callback: () {}, text: 'Log in with Facebook')
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'OR',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            UiHelper.CustomTextButton(
                callback: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ));
                },
                text: 'SignUp')
          ],
        )
      ],
    )));
  }
}
