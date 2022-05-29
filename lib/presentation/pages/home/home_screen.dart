// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'components/bottom_buttons.dart';
import 'components/categories.dart';
import 'components/custom_app_bar.dart';
import 'components/houses.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              CustomAppBar(),
              Categories(),
              Houses(),
            ],
          ),
          BottomButtons(),
        ],
      ),
    );
  }
}
