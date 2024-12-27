import 'package:flutter/material.dart';
import 'package:instauiclone/Screen/profile/postscreen.dart';
import 'package:instauiclone/Screen/profile/tagScreens.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Anees@w',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
            actions: [Icon(Icons.list_outlined)],
          ),
          body: Column(
            children: [
              SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/R.d064a09d90d5c177c4813b582941c189?rik=oRNqtsfDamTI7Q&pid=ImgRaw&r=0',
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 50,
                child: AppBar(
                  bottom: TabBar(
                      indicatorColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(icon: Icon(Icons.macro_off)),
                        Tab(icon: Icon(Icons.grid_on_rounded))
                      ]),
                ),
              ),
              Expanded(child: TabBarView(children: [Postscreen(), TabScreen()]))
            ],
          )),
    );
  }
}
