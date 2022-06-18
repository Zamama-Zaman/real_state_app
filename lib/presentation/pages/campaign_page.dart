// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/presentation/pages/overview_page.dart';
import 'package:real_state_app/presentation/pages/project_page.dart';
import 'package:real_state_app/presentation/pages/update_page.dart';
import 'package:real_state_app/presentation/widgets/drawer_widget.dart';

class CompaignPage extends StatefulWidget {
  const CompaignPage({Key? key}) : super(key: key);

  @override
  State<CompaignPage> createState() => _CompaignPageState();
}

class _CompaignPageState extends State<CompaignPage>
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
    Tab(text: "OVERVIEW"),
    Tab(text: "PROJECT"),
    Tab(text: "UPDATES"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerWidget(context),
      appBar: AppBar(
        title: Text(
          "Compaign",
        ),
        bottom: TabBar(
          onTap: (index) {
            // Should not used it as it only called when tab options are clicked,
            // not when user swapped
          },
          controller: _controller,
          tabs: list,
          indicatorColor: Constant.kGreenColor,
          labelColor: Constant.kGreenColor,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          OverviewPage(),
          ProjectPage(),
          UpdatePage(),
        ],
      ),
    );
  }
}
