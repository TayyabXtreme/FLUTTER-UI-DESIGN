import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Widgets/UiHelper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Profile Info',
          style: TextStyle(
              color: Color(0xff00A884),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Uihelper.CustomText(
              text: "Please provide your name and an optional", height: 14),
          SizedBox(
            height: 3,
          ),
          Uihelper.CustomText(text: "profile photo", height: 14),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            child: Uihelper.CustomImage(imgurl: 'photo-camera.png'),
            radius: 80,
            backgroundColor: Color(0xffD9D9D9),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
              width: 300,
              child: Row(
                children: [
                  SizedBox(
                    width: 270, // Add width here
                    child: TextField(
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      decoration: InputDecoration(
                          hintText: "Type your name here",
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff05aa82))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xff05aa82)))),
                    ),
                  ),
                  Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  )
                ],
              ))
        ],
      )),
      floatingActionButton:
          Uihelper.CustomButton(callback: () {}, buttonname: 'Next'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
