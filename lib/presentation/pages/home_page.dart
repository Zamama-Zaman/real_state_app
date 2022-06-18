// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_state_app/presentation/pages/ending_soon_page.dart';
import 'package:real_state_app/presentation/pages/popular_page.dart';
import "package:real_state_app/presentation/pages/what's_new_page.dart";
import 'package:real_state_app/presentation/widgets/drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
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
    Tab(text: "WHAT'S NEW"),
    Tab(text: "POPULAR"),
    Tab(text: "ENDING SOON"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerWidget(context),
      appBar: AppBar(
        title: Text("Home"),
        bottom: TabBar(
          onTap: (index) {
            // Should not used it as it only called when tab options are clicked,
            // not when user swapped
          },
          controller: _controller,
          tabs: list,
          indicatorColor: Colors.green,
          labelColor: Colors.green,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          WhatsNewPage(),
          PopularPage(),
          EndingSoon(),
        ],
      ),
    );
  }
}
