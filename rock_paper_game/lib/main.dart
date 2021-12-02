import 'package:flutter/material.dart';

import 'my_app_body.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Rock Paper Sissor Game'),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: SingleChildScrollView(child: MyAppBody()),
      ),
    ),
  ));
}
