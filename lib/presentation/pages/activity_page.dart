// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_state_app/presentation/pages/feed_page.dart';
import 'package:real_state_app/presentation/pages/notification_page.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      // print("Selected Index: " + _controller.index.toString());
    });
  }

  List<Widget> list = [
    Tab(text: "FEED"),
    Tab(text: "NOTIFCATIONS"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity"),
        bottom: TabBar(
          onTap: (index) {},
          controller: _controller,
          tabs: list,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          FeedPage(),
          NotificationPage(),
        ],
      ),
    );
  }
}
