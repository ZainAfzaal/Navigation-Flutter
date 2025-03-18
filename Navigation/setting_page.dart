import 'package:flutter/material.dart';

class settingPage extends StatelessWidget {
  const settingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Page"),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue,
      body: const Center(
        child: Text("Setting!"),
      ),
    );
  }
}
