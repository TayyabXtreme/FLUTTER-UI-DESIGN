import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Widgets/UiHelper.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  var ContactContent = [
    {
      "img":
          "https://th.bing.com/th/id/R.3f3b68c0fde58eea7448cef9b640e299?rik=c0t2b8nVH4v%2f2g&pid=ImgRaw&r=0",
      "name": "Abrar",
      "status": "Busy on"
    },
    {
      "img":
          "https://th.bing.com/th/id/R.2f3b68c0fde58eea7448cef9b640e299?rik=c0t2b8nVH4v%2f2g&pid=ImgRaw&r=1",
      "name": "John",
      "status": "Available"
    },
    {
      "img":
          "https://th.bing.com/th/id/R.4f3b68c0fde58eea7448cef9b640e299?rik=c0t2b8nVH4v%2f2g&pid=ImgRaw&r=2",
      "name": "Doe",
      "status": "At work"
    },
    {
      "img":
          "https://th.bing.com/th/id/R.5f3b68c0fde58eea7448cef9b640e299?rik=c0t2b8nVH4v%2f2g&pid=ImgRaw&r=3",
      "name": "Alice",
      "status": "In a meeting"
    },
    {
      "img":
          "https://th.bing.com/th/id/R.6f3b68c0fde58eea7448cef9b640e299?rik=c0t2b8nVH4v%2f2g&pid=ImgRaw&r=4",
      "name": "Bob",
      "status": "On vacation"
    },
    {
      "img":
          "https://th.bing.com/th/id/R.7f3b68c0fde58eea7448cef9b640e299?rik=c0t2b8nVH4v%2f2g&pid=ImgRaw&r=5",
      "name": "Charlie",
      "status": "Offline"
    },
    {
      "img":
          "https://th.bing.com/th/id/R.8f3b68c0fde58eea7448cef9b640e299?rik=c0t2b8nVH4v%2f2g&pid=ImgRaw&r=6",
      "name": "David",
      "status": "Online"
    },
    {
      "img":
          "https://th.bing.com/th/id/R.9f3b68c0fde58eea7448cef9b640e299?rik=c0t2b8nVH4v%2f2g&pid=ImgRaw&r=7",
      "name": "Eve",
      "status": "Do not disturb"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Uihelper.CustomText(
              text: 'Select Contact', height: 16, color: Colors.white),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
          ],
        ),
        body: Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(ContactContent[index]['img'].toString()),
              ),
              title: Uihelper.CustomText(
                  text: ContactContent[index]['name'].toString(),
                  height: 16,
                  fontweight: FontWeight.bold,
                  color: Color(0xff000000)),
              subtitle: Uihelper.CustomText(
                  text: ContactContent[index]['status'].toString(), height: 14),
            );
          },
          itemCount: ContactContent.length,
        )));
  }
}
