import 'package:flutter/material.dart';

import 'my_frame.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: const Text(
            'Nature Gallery',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        //backgroundColor: Colors.white,
        body: Row(children: [
          Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                child: new MyFrame(str: 'Hills1'),
              ),
              Expanded(
                child: new MyFrame(str: 'Hills2'),
              ),
            ],
          ),
          Flex(
            direction: Axis.vertical,
            children: [
              Flexible(
                child: new MyFrame(str: 'Hills3'),
              ),
              Flexible(
                child: new MyFrame(str: 'Hills4'),
              ),
            ],
          ),
        ]));
  }
}
