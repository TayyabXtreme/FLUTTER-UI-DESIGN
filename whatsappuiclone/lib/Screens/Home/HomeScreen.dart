import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Screens/Calls/CallsScreen.dart';
import 'package:whatsappuiclone/Screens/Camera/CameraScreen.dart';
import 'package:whatsappuiclone/Screens/Chats/ChatsScreen.dart';
import 'package:whatsappuiclone/Screens/Status/StatusScreen.dart';
import 'package:whatsappuiclone/Widgets/UiHelper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Status",
                  ),
                  Tab(
                    text: "Calls",
                  )
                ],
                indicatorColor: Colors.white,
              ),
              toolbarHeight: 80,
              title: Uihelper.CustomText(
                  text: 'WhatsApp', height: 20, color: Colors.white),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: IconButton(
                      onPressed: () {},
                      icon: Uihelper.CustomImage(imgurl: 'Search.png')),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
              ],
            ),
            body: TabBarView(children: [
              CamersScreen(),
              ChatsScreen(),
              StatusScreen(),
              CallsScreen()
            ])));
  }
}
