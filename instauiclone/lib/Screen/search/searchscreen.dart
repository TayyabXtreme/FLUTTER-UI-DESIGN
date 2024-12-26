import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instauiclone/Widgets/uihelper.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                  width: 300,
                  height: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff262626)),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(CupertinoIcons.search),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xff8e8393),
                            fontWeight: FontWeight.normal)),
                  )),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.live_tv)
            ],
          )
        ],
      ),
    );
  }
}
