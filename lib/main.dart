import 'package:flutter/material.dart';
import 'package:real_state_app/presentation/pages/activity_page.dart';
import 'package:real_state_app/presentation/pages/login_page.dart';
import 'package:real_state_app/presentation/pages/properties_page.dart';

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
      ),
      home: const PropertiesPage(),
    );
  }
}
