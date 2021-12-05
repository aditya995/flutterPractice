import 'package:flutter/material.dart';

class myHomePage extends StatelessWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage('files/images/box.png')),
    );
  }
}
