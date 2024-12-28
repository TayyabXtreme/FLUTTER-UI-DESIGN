import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Widgets/UiHelper.dart';

class StatusScreen extends StatelessWidget {
  StatusScreen({super.key});

  var statusContent = [
    {
      "img":
          "https://th.bing.com/th/id/R.98499ad19722a7298f007218a08b8588?rik=7RQ50XWDWJU93w&pid=ImgRaw&r=0",
      "name": "Micheal",
      "statustime": "15 min ago",
    },
    {
      "img":
          "https://th.bing.com/th/id/R.1a2b3c4d5e6f7g8h9i0j1k2l3m4n5o6p7q8r9s0t1u2v3w4x5y6z7a8b9c0d1e2f3?rik=example1&pid=ImgRaw&r=0",
      "name": "Sarah",
      "statustime": "30 min ago",
    },
    {
      "img":
          "https://th.bing.com/th/id/R.2b3c4d5e6f7g8h9i0j1k2l3m4n5o6p7q8r9s0t1u2v3w4x5y6z7a8b9c0d1e2f3?rik=example2&pid=ImgRaw&r=0",
      "name": "John",
      "statustime": "1 hour ago",
    },
    {
      "img":
          "https://th.bing.com/th/id/R.3c4d5e6f7g8h9i0j1k2l3m4n5o6p7q8r9s0t1u2v3w4x5y6z7a8b9c0d1e2f3?rik=example3&pid=ImgRaw&r=0",
      "name": "Emma",
      "statustime": "2 hours ago",
    },
    {
      "img":
          "https://th.bing.com/th/id/R.4d5e6f7g8h9i0j1k2l3m4n5o6p7q8r9s0t1u2v3w4x5y6z7a8b9c0d1e2f3?rik=example4&pid=ImgRaw&r=0",
      "name": "David",
      "statustime": "5 hours ago",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(
        height: 30,
      ),
      Row(
        children: [
          SizedBox(
            width: 30,
          ),
          Uihelper.CustomText(text: "Status", height: 20),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      ListTile(
        leading: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/R.ee2df91af452a74f76fcbdca587af88e?rik=Qr48b2WLdlfgGg&pid=ImgRaw&r=0'),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff008069),
                      radius: 10,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ))
              ],
            )),
        title: Uihelper.CustomText(
            text: "My Status", height: 18, fontweight: FontWeight.bold),
        subtitle:
            Uihelper.CustomText(text: "Tap to add status update", height: 15),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Uihelper.CustomText(text: 'Recent updates', height: 15),
              Icon(
                Icons.arrow_drop_down,
                color: Color(0xff5e5e5e),
              )
            ],
          )),
      SizedBox(
        height: 10,
      ),
      Expanded(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(statusContent[index]["img"].toString()),
            ),
            title: Uihelper.CustomText(
                text: statusContent[index]['name'].toString(),
                height: 16,
                fontweight: FontWeight.bold),
            subtitle: Uihelper.CustomText(
                text: statusContent[index]['statustime'].toString(),
                height: 14),
          );
        },
        itemCount: statusContent.length,
      ))
    ]));
  }
}
