import 'package:flutter/material.dart';
import 'package:instauiclone/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  var arrcontent = [
    {
      "img":
          "https://th.bing.com/th/id/R.d064a09d90d5c177c4813b582941c189?rik=oRNqtsfDamTI7Q&pid=ImgRaw&r=0",
      "name": "Your story"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.Gc94mo4hbciYBDSJwWzsAAHaHa?rs=1&pid=ImgDetMain",
      "name": "khartra"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.SH-RnT4VgSzVgv8ba6nZOAHaJ4?rs=1&pid=ImgDetMain",
      "name": "elvishbhai"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIF.iEoiDQCizyN0i6OMDBM3oA?rs=1&pid=ImgDetMain",
      "name": "fukra"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.iI9HLVzcRoEN_nvQ2X_W8AHaJQ?rs=1&pid=ImgDetMain",
      "name": "carry"
    },
    {
      "img":
          "https://th.bing.com/th/id/R.d064a09d90d5c177c4813b582941c189?rik=oRNqtsfDamTI7Q&pid=ImgRaw&r=0",
      "name": "Your story"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.Gc94mo4hbciYBDSJwWzsAAHaHa?rs=1&pid=ImgDetMain",
      "name": "khartra"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.SH-RnT4VgSzVgv8ba6nZOAHaJ4?rs=1&pid=ImgDetMain",
      "name": "elvishbhai"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIF.iEoiDQCizyN0i6OMDBM3oA?rs=1&pid=ImgDetMain",
      "name": "fukra"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.iI9HLVzcRoEN_nvQ2X_W8AHaJQ?rs=1&pid=ImgDetMain",
      "name": "carry"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 88,
          backgroundColor: Colors.black12,
          leading:
              UiHelper.CustomImage(imgUrl: 'camera.png', width: 24, height: 24),
          title: UiHelper.CustomImage(
              imgUrl: 'instagramlogo.png', width: 100, height: 100),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.tv)),
            IconButton(onPressed: () {}, icon: Icon(Icons.share))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: 100,
                  child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                        arrcontent[index]['img'].toString()),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(arrcontent[index]['name'].toString())
                                ],
                              ));
                        },
                        itemCount: arrcontent.length,
                        scrollDirection: Axis.horizontal,
                      ))),
              Container(
                height: 54,
                width: 375,
                color: Colors.black12,
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(arrcontent[1]['img'].toString())),
                  title: Text(
                    'Anees',
                    style: TextStyle(fontSize: 13, color: Color(0xfff0f0f0)),
                  ),
                  subtitle: Text(
                    'Hyd,Pak',
                    style: TextStyle(fontSize: 11, color: Color(0xfff9f9f9)),
                  ),
                  trailing: Icon(Icons.more_horiz),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 375,
                width: double.infinity,
                child: Image.network(
                  'https://th.bing.com/th/id/R.b5b6e9ba199c43996882a8b0d94d9628?rik=XUz1%2btx5gGoQVA&pid=ImgRaw&r=0',
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  UiHelper.CustomImage(
                      imgUrl: 'heart.png', width: 25, height: 25),
                  SizedBox(
                    width: 20,
                  ),
                  UiHelper.CustomImage(
                      imgUrl: 'comment.png', width: 25, height: 25),
                  SizedBox(
                    width: 20,
                  ),
                  UiHelper.CustomImage(
                      imgUrl: 'share.png', width: 25, height: 25),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      UiHelper.CustomImage(
                          imgUrl: 'tv.png', width: 50, height: 50),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ))
                ],
              )
            ],
          ),
        ));
  }
}
