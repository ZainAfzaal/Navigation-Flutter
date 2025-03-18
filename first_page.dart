// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:practice/home_page.dart';
import 'package:practice/profile_page.dart';
import 'package:practice/setting_page.dart';

// ignore: camel_case_types
class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

// ignore: camel_case_types
class _firstPageState extends State<firstPage> {
  List pages = [
    homePage(),
    profilePage(),
    settingPage(),
  ];

  int selectedindex = 0;

  void navigateBootmBar(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.flag)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, "/home");
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("P R O F I L E"),
              onTap: () {
                Navigator.pop(context);

                Navigator.pushNamed(context, "/profile");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/setting");
              },
            )
          ],
        ),
      ),
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: navigateBootmBar,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ]),
    );
  }
}
