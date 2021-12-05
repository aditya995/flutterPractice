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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('AppBar'),
            centerTitle: true,
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.up,
              textBaseline: TextBaseline.ideographic,
              children: [
                Text('Adata 1'),
                Text('Cdata 2'),
                Text('Bdata 3'),
                Text('Ddata 4'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
