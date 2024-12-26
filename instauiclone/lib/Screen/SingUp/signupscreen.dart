import 'package:flutter/material.dart';
import 'package:instauiclone/Screen/login/loginScreen.dart';
import 'package:instauiclone/Widgets/uihelper.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        UiHelper.CustomImage(
            imgUrl: 'instagramlogo.png', width: 150, height: 150),
        SizedBox(
          height: 10,
        ),
        UiHelper.CustomTextField(
            controller: usernameController,
            text: 'Username',
            tohide: false,
            textinputtype: TextInputType.text),
        SizedBox(
          height: 10,
        ),
        UiHelper.CustomTextField(
            controller: emailController,
            text: 'Email',
            tohide: false,
            textinputtype: TextInputType.text),
        SizedBox(
          height: 10,
        ),
        UiHelper.CustomTextField(
            controller: passwordController,
            text: 'Password',
            tohide: true,
            textinputtype: TextInputType.text),
        SizedBox(
          height: 20,
        ),
        UiHelper.CustomButton(callback: () {}, buttonName: 'Sign Up'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an Account?',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            UiHelper.CustomTextButton(
                callback: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                text: 'Sign in')
          ],
        )
      ],
    )));
  }
}
