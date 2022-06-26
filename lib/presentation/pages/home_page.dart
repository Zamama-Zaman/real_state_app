// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/presentation/pages/ending_soon_page.dart';
import 'package:real_state_app/presentation/pages/home_icon_page.dart';
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
    Tab(icon: Icon(Icons.home)),
    Tab(text: " WHAT'S NEW "),
    Tab(text: " POPULAR "),
    Tab(text: " ENDING SOON "),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerWidget(context),
      appBar: AppBar(
        title: Text("Home"),
        bottom: TabBar(
          controller: _controller,
          isScrollable: true,
          padding: EdgeInsets.zero,
          tabs: list,
          indicatorColor: Constant.kGreenColor,
          labelColor: Constant.kGreenColor,
        ),
        //     PreferredSize(
        //   preferredSize: Size(double.infinity, 50),
        //   child: Row(
        //     children: [
        //       // IconButton(
        //       //   onPressed: () {},
        //       //   icon: Icon(Icons.home),
        //       // ),
        //       Expanded(
        //         child: TabBar(
        //           controller: _controller,
        //           isScrollable: true,
        //           tabs: list,
        //           indicatorColor: Colors.green,
        //           labelColor: Colors.green,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          HomeIconPage(),
          WhatsNewPage(),
          PopularPage(),
          EndingSoon(),
        ],
      ),
    );
  }
}
