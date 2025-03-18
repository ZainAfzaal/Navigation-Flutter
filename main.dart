import 'package:flutter/material.dart';
import 'package:practice/first_page.dart';
import 'package:practice/home_page.dart';
import 'package:practice/profile_page.dart';
import 'package:practice/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const firstPage(),
      routes: {
        "/home": (context) => homePage(),
        "/setting": (context) => settingPage(),
        "/profile": (context) => profilePage(),
      },
    );
  }
}
