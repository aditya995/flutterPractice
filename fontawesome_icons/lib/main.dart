import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            FaIcon(FontAwesomeIcons.whatsapp),
            SizedBox(
              height: 50,
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.facebookMessenger),
            ),
          ],
        ),
      ),
    );
  }
}
