import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Great work!"),
          ),
          backgroundColor: Colors.black38,
        ),
        backgroundColor: Colors.black87,
        body: const Center(
          child: Image(image: AssetImage('files/images/aa.png')),
        ),
      ),
    );
  }
}
