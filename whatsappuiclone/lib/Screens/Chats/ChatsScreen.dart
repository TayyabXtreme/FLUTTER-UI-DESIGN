import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Widgets/UiHelper.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});

  var arrContent = [
    {
      "images":
          "https://th.bing.com/th/id/OIP.mnMdlFOgPl2jNXBDQHKCWgHaE8?rs=1&pid=ImgDetMain",
      "name": "Anees",
      "lastmsg": "blah i am busu ..",
      "time": "05:45 am",
      "msg": "7"
    },
    {
      "images":
          "https://th.bing.com/th/id/OIP.mnMdlFOgPl2jNXBDQHKCWgHaE8?rs=1&pid=ImgDetMain",
      "name": "John",
      "lastmsg": "Hey, how are you?",
      "time": "10:30 am",
      "msg": "2"
    },
    {
      "images":
          "https://th.bing.com/th/id/OIP.mnMdlFOgPl2jNXBDQHKCWgHaE8?rs=1&pid=ImgDetMain",
      "name": "Emma",
      "lastmsg": "Let's catch up later.",
      "time": "12:15 pm",
      "msg": "5"
    },
    {
      "images":
          "https://th.bing.com/th/id/OIP.mnMdlFOgPl2jNXBDQHKCWgHaE8?rs=1&pid=ImgDetMain",
      "name": "Sophia",
      "lastmsg": "Can you send me the files?",
      "time": "03:20 pm",
      "msg": "1"
    },
    {
      "images":
          "https://th.bing.com/th/id/OIP.mnMdlFOgPl2jNXBDQHKCWgHaE8?rs=1&pid=ImgDetMain",
      "name": "Liam",
      "lastmsg": "Meeting at 5?",
      "time": "04:45 pm",
      "msg": "3"
    },
    {
      "images":
          "https://th.bing.com/th/id/OIP.mnMdlFOgPl2jNXBDQHKCWgHaE8?rs=1&pid=ImgDetMain",
      "name": "Olivia",
      "lastmsg": "See you soon!",
      "time": "06:30 pm",
      "msg": "4"
    },
    {
      "images":
          "https://th.bing.com/th/id/OIP.mnMdlFOgPl2jNXBDQHKCWgHaE8?rs=1&pid=ImgDetMain",
      "name": "Noah",
      "lastmsg": "Got it, thanks!",
      "time": "07:45 pm",
      "msg": "6"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      NetworkImage(arrContent[index]['images'].toString()),
                ),
                title: Uihelper.CustomText(
                    text: arrContent[index]['name'].toString(),
                    height: 14,
                    fontweight: FontWeight.bold),
                subtitle: Uihelper.CustomText(
                    text: arrContent[index]['lastmsg'].toString(), height: 12),
                trailing: Column(
                  children: [
                    Uihelper.CustomText(
                        text: arrContent[index]['time'].toString(),
                        height: 12,
                        color: Color(0xff026500)),
                    SizedBox(
                      height: 2,
                    ),
                    CircleAvatar(
                      radius: 9,
                      backgroundColor: Color(0xff036a01),
                      child: Uihelper.CustomText(
                          text: arrContent[index]['msg'].toString(),
                          height: 12,
                          color: Colors.white),
                    ),
                  ],
                ),
              );
            },
            itemCount: arrContent.length,
          ))
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xff008665),
        child: Image.asset('assets/images/mode_comment.png'),
      ),
    );
  }
}
