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
      title: 'Text widget',
      home: SafeArea(
        child: Scaffold(
          body: myTextWidget(),
        ),
      ),
    );
  }
}

class myTextWidget extends StatelessWidget {
  const myTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        height: 400,
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Text Data Text Data ',
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.italic,
              ),
              // textAlign: TextAlign.end, // Better use Align() widget for this
            ),
            Text(
              'Text Data Text Data Text Data',
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                // "wordSpacing" Should be avoided pushes out texts outside parent container area!! ****
                wordSpacing: 35,
              ),
            ),
            Text(
              'Text Data Text Data\nText Data',
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
                height: 2,
                // leadingDistribution: TextLeadingDistribution.proportional,
              ),
            ),
            Text(
              'Text Data Text Data Text Data Text Data Text Data Text Data Text Data',
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
