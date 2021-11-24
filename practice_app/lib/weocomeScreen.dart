import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  To wipe out "debug" mark in the right side of screen
      debugShowCheckedModeBanner: false,

      //  Scaffold class
      //  Implements the basic material design visual layout structure.
      //  This class provides APIs for showing drawers and bottom sheets.
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("The worst app in history"),
          ),
          backgroundColor: Colors.black26,
        ),
        backgroundColor: Colors.white,
        body: const Center(
          child: Image(image: AssetImage('files/images/box.png')),
        ),
      ),
    );
  }
}
