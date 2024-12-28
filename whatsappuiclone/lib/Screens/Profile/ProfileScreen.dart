import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsappuiclone/Screens/Home/HomeScreen.dart';
import 'package:whatsappuiclone/Widgets/UiHelper.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  File? pickedimage;
  @override
  Widget build(BuildContext context) {
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
          GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child: pickedimage == null
                  ? CircleAvatar(
                      child: Uihelper.CustomImage(imgurl: 'photo-camera.png'),
                      radius: 80,
                      backgroundColor: Color(0xffD9D9D9),
                    )
                  : CircleAvatar(
                      radius: 80,
                      backgroundImage: FileImage(pickedimage!),
                    )),
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
      floatingActionButton: Uihelper.CustomButton(
          callback: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          buttonname: 'Next'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _openBottom(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          _pickImage(ImageSource.camera);
                        },
                        icon: Icon(
                          Icons.camera_alt,
                          size: 80,
                          color: Colors.grey,
                        )),
                    IconButton(
                        onPressed: () {
                          _pickImage(ImageSource.gallery);
                        },
                        icon: Icon(
                          Icons.image,
                          size: 80,
                          color: Colors.grey,
                        )),
                  ],
                )
              ],
            ),
          );
        });
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempImg = File(photo.path);
      setState(() {
        pickedimage = tempImg;
      });
    } catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(ex.toString()), backgroundColor: Colors.green),
      );
    }
  }
}
