import 'package:better_organize/my_app_body.dart';
import 'package:better_organize/my_title.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: MyTitle(),
          centerTitle: true,
        ),
        body: SafeArea(child: MyAppBody()),
      ),
    );
  }
}
