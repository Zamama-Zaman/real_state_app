// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/presentation/pages/account_page.dart';
import 'package:real_state_app/presentation/pages/activity_page.dart';
import 'package:real_state_app/presentation/pages/add_back_account_page.dart';
import 'package:real_state_app/presentation/pages/add_card_page.dart';
import 'package:real_state_app/presentation/pages/campaign_page.dart';
import 'package:real_state_app/presentation/pages/documents_page.dart';
import 'package:real_state_app/presentation/pages/faq_page.dart';
import 'package:real_state_app/presentation/pages/favorited_page.dart';
import 'package:real_state_app/presentation/pages/gallery_page.dart';
import 'package:real_state_app/presentation/pages/guide_profile_page.dart';
import 'package:real_state_app/presentation/pages/dashboard_page.dart';
import 'package:real_state_app/presentation/pages/home_page.dart';
import 'package:real_state_app/presentation/pages/login_page.dart';
import 'package:real_state_app/presentation/pages/map_page.dart';
import 'package:real_state_app/presentation/pages/my_profile_page.dart';
import 'package:real_state_app/presentation/pages/my_wallet_page.dart';
import 'package:real_state_app/presentation/pages/news_page.dart';
import 'package:real_state_app/presentation/pages/plans_page.dart';
import 'package:real_state_app/presentation/pages/properties_page.dart';
import 'package:real_state_app/presentation/pages/send_money_page.dart';
import 'package:real_state_app/presentation/pages/transaction_successfully_page.dart';
import 'package:real_state_app/presentation/pages/update_page.dart';
import 'package:real_state_app/presentation/pages/wallet_page.dart';
import 'package:real_state_app/presentation/pages/with_draw_money_page.dart';
import 'package:real_state_app/presentation/pages/your_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BUILD REAL WEALTH',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: const AppBarTheme(
          color: black,
        ),
      ),
      home: const HomePage(),
    );
  }
}
