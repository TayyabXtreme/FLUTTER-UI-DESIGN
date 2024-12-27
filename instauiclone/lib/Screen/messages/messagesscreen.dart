import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instauiclone/Widgets/uihelper.dart';

class MessagesScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContent = [
    {
      "img":
          "https://th.bing.com/th/id/R.d064a09d90d5c177c4813b582941c189?rik=oRNqtsfDamTI7Q&pid=ImgRaw&r=0",
      "name": "Your story",
      "lastmsg": "Have a nice day bro",
      "time": "now"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.Gc94mo4hbciYBDSJwWzsAAHaHa?rs=1&pid=ImgDetMain",
      "name": "khartra",
      "lastmsg": "how are you >",
      "time": "12 min"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.SH-RnT4VgSzVgv8ba6nZOAHaJ4?rs=1&pid=ImgDetMain",
      "name": "elvishbhai",
      "lastmsg": "...",
      "time": "1day"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIF.iEoiDQCizyN0i6OMDBM3oA?rs=1&pid=ImgDetMain",
      "name": "fukra",
      "lastmsg": "Pls answer me",
      "time": "1 month"
    },
    {
      "img":
          "https://th.bing.com/th/id/R.d064a09d90d5c177c4813b582941c189?rik=oRNqtsfDamTI7Q&pid=ImgRaw&r=0",
      "name": "Your story",
      "lastmsg": "Have a nice day bro",
      "time": "now"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.Gc94mo4hbciYBDSJwWzsAAHaHa?rs=1&pid=ImgDetMain",
      "name": "khartra",
      "lastmsg": "how are you >",
      "time": "12 min"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.SH-RnT4VgSzVgv8ba6nZOAHaJ4?rs=1&pid=ImgDetMain",
      "name": "elvishbhai",
      "lastmsg": "...",
      "time": "1day"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIF.iEoiDQCizyN0i6OMDBM3oA?rs=1&pid=ImgDetMain",
      "name": "fukra",
      "lastmsg": "Pls answer me",
      "time": "1 month"
    },
    {
      "img":
          "https://th.bing.com/th/id/R.d064a09d90d5c177c4813b582941c189?rik=oRNqtsfDamTI7Q&pid=ImgRaw&r=0",
      "name": "Your story",
      "lastmsg": "Have a nice day bro",
      "time": "now"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.Gc94mo4hbciYBDSJwWzsAAHaHa?rs=1&pid=ImgDetMain",
      "name": "khartra",
      "lastmsg": "how are you >",
      "time": "12 min"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.SH-RnT4VgSzVgv8ba6nZOAHaJ4?rs=1&pid=ImgDetMain",
      "name": "elvishbhai",
      "lastmsg": "...",
      "time": "1day"
    },
    {
      "img":
          "https://th.bing.com/th/id/OIF.iEoiDQCizyN0i6OMDBM3oA?rs=1&pid=ImgDetMain",
      "name": "fukra",
      "lastmsg": "Pls answer me",
      "time": "1 month"
    },
  ];

  MessagesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        leading: IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.back)),
        title: Text(
          'Anees Teevino',
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 28,
              ))
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(children: [
            SizedBox(
              width: 10,
            ),
            Container(
                width: 347,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xff262626),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                    padding: EdgeInsets.only(bottom: 3),
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xff8e8e93)),
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search)),
                    )))
          ]),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(arrContent[index]['img'].toString()),
                ),
                title: Text(arrContent[index]['name'].toString()),
                subtitle: Text(arrContent[index]['lastmsg'].toString()),
                trailing: Icon(Icons.camera),
              );
            },
            itemCount: arrContent.length,
          )),
          FloatingActionButton(
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.camera_alt_outlined),
                SizedBox(
                  width: 10,
                ),
                Text('Camera')
              ],
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
