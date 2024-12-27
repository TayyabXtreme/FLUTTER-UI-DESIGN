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
      body: Column(
        children: [
          SizedBox(
              height: 80,
              child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                arrcontent[index]['img'].toString()),
                          ));
                    },
                    itemCount: arrcontent.length,
                    scrollDirection: Axis.horizontal,
                  ))),
          SizedBox(
            height: 30,
            child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          arrcontent[index]['name'].toString(),
                          style: TextStyle(fontSize: 12),
                        ));
                  },
                  itemCount: arrcontent.length,
                  scrollDirection: Axis.horizontal,
                )),
          )
        ],
      ),
    );
  }
}
