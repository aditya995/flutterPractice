import 'package:flutter/material.dart';
import 'package:practice_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  To wipe out "debug" mark in the right side of screen
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        // Excludes the area containing "phone camera" on the top of screen
        child: Scaffold(
          //  Implements the basic material design visual layout structure.
          //  This class provides APIs for showing drawers and bottom sheets.
          appBar: AppBar(
            title: const Center(
              child: Text("Great work!"),
            ),
          ),
          body: myHomePage(),
        ),
      ),
    );
  }
}
