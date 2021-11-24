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
                child: new MyFrame(
                  str: 'Hills',
                  imgAdd: 'files/images/1.jpg',
                ),
              ),
              Expanded(
                child: new MyFrame(
                  str:
                      'Mountains\n\n\n\n\n\n\n\njkskdjsjkdsj\n\n\n\n\n\n\nsdfsdf',
                  imgAdd: 'files/images/2.jpg',
                ),
              ),
            ],
          ),
          Flex(
            direction: Axis.vertical,
            children: [
              Flexible(
                child: new MyFrame(
                  str: 'WaterFalls',
                  imgAdd: 'files/images/3.jpg',
                ),
              ),
              Flexible(
                child: new MyFrame(
                  str: 'Desert',
                  imgAdd: 'files/images/4.jpg',
                ),
              ),
            ],
          ),
        ]));
  }
}
