import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Loading Screen App"),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: const Center(
        child: Image(image: AssetImage('files/images/box.png')),
      ),
    );
  }
}
