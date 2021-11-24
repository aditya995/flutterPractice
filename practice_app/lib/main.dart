import 'package:flutter/material.dart';

import 'loading_screen.dart';
import 'single_child_scroll_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nature Gallery',
      home: MySingleChildScrollView(),
      // home: LoadingScreen(),
    );
  }
}
