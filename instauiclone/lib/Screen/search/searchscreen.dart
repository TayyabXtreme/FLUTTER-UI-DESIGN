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
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.CustomImage(
                        imgUrl: 'tv.png', width: 16, height: 16),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'IGTV',
                      style: TextStyle(fontSize: 14, color: Color(0xfff9f9f9)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 32,
                width: 75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.CustomImage(
                        imgUrl: 'bag.png', width: 16, height: 16),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Shop',
                      style: TextStyle(fontSize: 14, color: Color(0xfff9f9f9)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 32,
                width: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Style',
                      style: TextStyle(fontSize: 14, color: Color(0xfff9f9f9)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 32,
                width: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sports',
                      style: TextStyle(fontSize: 14, color: Color(0xfff9f9f9)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 32,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Auto',
                      style: TextStyle(fontSize: 14, color: Color(0xfff9f9f9)),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
