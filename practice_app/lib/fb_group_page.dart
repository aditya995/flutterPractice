import 'package:flutter/material.dart';
import 'my_body.dart';
import 'my_heading_nav.dart';

class FbGroupPage extends StatelessWidget {
  const FbGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const MyHeadingNav(
          bell: '1',
          msg: '5',
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            child: const MyBody(
              postNumber: 3,
            ),
            width: 900,
          ),
        ),
      ),
    ));
  }
}