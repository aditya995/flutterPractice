import 'package:flutter/material.dart';

class MyAppBody extends StatefulWidget {
  const MyAppBody({Key? key}) : super(key: key);

  @override
  _MyAppBodyState createState() => _MyAppBodyState();
}

class _MyAppBodyState extends State<MyAppBody> {
  // Variables should be initialized here
  var counter = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Elements to be shown below counts: $counter'),
        TextButton(
            onPressed: () {
              // ********* Must use serstate() to change values in flutter UI
              setState(() {
                if (counter != 0) counter--;
              });
            },
            child: Text('Decrease by 1')),
        TextButton(
            onPressed: () {
              // ********* Must use serstate() to change values in flutter UI
              setState(() {
                counter++;
              });
            },
            child: Text('Increase by 1')),
        for (var i = 1; i <= counter; i++) Text('data $i'),
      ],
    );
  }
}
