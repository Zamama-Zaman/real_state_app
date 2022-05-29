// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePageDummy extends StatelessWidget {
  const HomePageDummy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
