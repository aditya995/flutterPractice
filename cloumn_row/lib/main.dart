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
          body: Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.start,

              // mainAxisSize: MainAxisSize.min,

              // verticalDirection: VerticalDirection.up,

              children: const [
                Text(' 1Adata 1'),
                Text(' 2Adata 2'),
                Text(' 10Adata 10'),
                Text(' 11Adata 11'),
                Text(' 21Adata 12'),
                Text(' 22Adata 100'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
