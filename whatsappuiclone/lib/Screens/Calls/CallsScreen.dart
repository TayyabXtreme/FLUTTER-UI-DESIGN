import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Widgets/UiHelper.dart';

class CallsScreen extends StatelessWidget {
  CallsScreen({super.key});

  var callContent = [
    {
      "name": "Anees",
      "img":
          "https://th.bing.com/th/id/R.98499ad19722a7298f007218a08b8588?rik=7RQ50XWDWJU93w&pid=ImgRaw&r=0",
      "calltime": "15 min ago"
    },
    {
      "name": "John",
      "img":
          "https://th.bing.com/th/id/R.12345ad19722a7298f007218a08b8588?rik=7RQ50XWDWJU93w&pid=ImgRaw&r=0",
      "calltime": "10 min ago"
    },
    {
      "name": "Doe",
      "img":
          "https://th.bing.com/th/id/R.67890ad19722a7298f007218a08b8588?rik=7RQ50XWDWJU93w&pid=ImgRaw&r=0",
      "calltime": "1 day ago"
    },
    {
      "name": "Smith",
      "img":
          "https://th.bing.com/th/id/R.11223ad19722a7298f007218a08b8588?rik=7RQ50XWDWJU93w&pid=ImgRaw&r=0",
      "calltime": "30 min ago"
    },
    {
      "name": "Jane",
      "img":
          "https://th.bing.com/th/id/R.44556ad19722a7298f007218a08b8588?rik=7RQ50XWDWJU93w&pid=ImgRaw&r=0",
      "calltime": "40 min ago"
    },
    {
      "name": "Emily",
      "img":
          "https://th.bing.com/th/id/R.78901ad19722a7298f007218a08b8588?rik=7RQ50XWDWJU93w&pid=ImgRaw&r=0",
      "calltime": "50 min ago"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Uihelper.CustomText(text: 'Recent', height: 18),
          ],
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage:
                    NetworkImage(callContent[index]['img'].toString()),
              ),
              title: Uihelper.CustomText(
                  text: callContent[index]['name'].toString(),
                  height: 18,
                  fontweight: FontWeight.bold),
              subtitle: Uihelper.CustomText(
                  text: callContent[index]['calltime'].toString(), height: 16),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.call,
                    color: Color(0xff00a884),
                  )),
            );
          },
          itemCount: callContent.length,
        ))
      ],
    ));
  }
}
