import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'tabs/comingsoon.dart';
import 'tabs/downloads.dart';
import 'tabs/home.dart';
import 'tabs/morepage.dart';
import 'tabs/search.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MaterialApp(
        // Title
        title: "Netflix Clone",
        debugShowCheckedModeBanner: false,
        // Home
        theme: ThemeData(fontFamily: 'Montserrat'),
        home: MyHome()));
  });
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          SearchPage(),
          ComingSoonPage(),
          DownloadPage(),
          MorePage()
        ],
        controller: controller,
      ),
      resizeToAvoidBottomPadding: true,
      bottomNavigationBar: Material(
        elevation: 1.0,
        color: Colors.black87,
        child: TabBar(
          labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
          indicatorColor: Colors.black,
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.search),
            ),
            Tab(
              icon: Icon(Icons.tv),
            ),
            Tab(
              icon: Icon(Icons.file_download),
            ),
            Tab(
              icon: Icon(Icons.menu),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
