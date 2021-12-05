import 'package:cloumn_row/_column.dart';
import 'package:cloumn_row/_row.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('AppBar'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              // learnColumn(),
              // learnColumn(),
              learnRow(),
            ],
          ),
        ),
      ),
    );
  }
}
