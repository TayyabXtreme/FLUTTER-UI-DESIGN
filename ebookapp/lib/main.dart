import 'dart:convert';

import 'package:ebookapp/utils/ui/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List popularBooks = []; // Proper initialization as an empty list

  void ReadData() async {
    await DefaultAssetBundle.of(context)
        .loadString('assets/json/popularbooks.json')
        .then((s) {
      setState(() {
        popularBooks = json.decode(s); // Populate the list with data
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ReadData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      child: SafeArea(
          child: Scaffold(
              body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageIcon(
                    AssetImage('assets/images/menu.png'),
                    size: 24,
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(Icons.notifications)
                    ],
                  )
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: Text(
                  'Popular Books',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 180,
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: -20,
                    right: 0,
                    child: SizedBox(
                        height: 190,
                        child: PageView.builder(
                            controller: PageController(viewportFraction: 0.8),
                            // ignore: unnecessary_null_comparison
                            itemCount: (popularBooks == null)
                                ? 0
                                : popularBooks.length,
                            itemBuilder: (_, index) {
                              return Container(
                                height: 180,
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          popularBooks[index]["img"]),
                                    )),
                              );
                            })))
              ],
            ),
          ),
        ],
      ))),
    );
  }
}
