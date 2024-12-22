import 'dart:convert';

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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  List popularBooks = []; // Proper initialization as an empty list
  ScrollController _scrollController = ScrollController();
  late TabController _tabController = TabController(length: 3, vsync: this);

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
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController();
    ReadData();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200], // Adjusted to a neutral background color
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              // Top bar with menu, search, and notifications
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ImageIcon(
                      AssetImage('assets/images/menu.png'),
                      size: 24,
                      color: Colors.black,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.search),
                        SizedBox(width: 12),
                        Icon(Icons.notifications),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Title
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Popular Books',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Popular books carousel
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
                        child: popularBooks.isEmpty
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : PageView.builder(
                                controller:
                                    PageController(viewportFraction: 0.8),
                                itemCount: popularBooks.length,
                                itemBuilder: (_, index) {
                                  return Container(
                                    height: 180,
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            popularBooks[index]["img"]),
                                      ),
                                    ),
                                  );
                                },
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              // Tabs and content
              Expanded(
                child: NestedScrollView(
                  controller: _scrollController,
                  headerSliverBuilder: (BuildContext context, bool isScroll) {
                    return [
                      SliverAppBar(
                        pinned: true,
                        backgroundColor: Colors.white,
                        bottom: PreferredSize(
                          preferredSize: const Size.fromHeight(50),
                          child: Container(
                            margin: const EdgeInsets.all(0),
                            child: TabBar(
                              tabs: const [
                                Tab(text: "Tab 1"),
                                Tab(text: "Tab 2"),
                                Tab(text: "Tab 3"),
                              ],
                              controller: _tabController,
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.deepPurple,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(
                    controller: _tabController,
                    children: [
                      Center(child: Text("Content for Tab 1")),
                      Center(child: Text("Content for Tab 2")),
                      Center(child: Text("Content for Tab 3")),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
