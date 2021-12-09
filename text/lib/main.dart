import 'dart:ui';

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
        height: 650,
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Text Data Text \nData Text \nData Text Data \nText Data Text Data Text Data Text Data Text Data Text Data Text Data Text Data ',
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.white,
                fontSize: 5,
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.italic,
                height: 2,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              textScaleFactor: 2, // increases font size
              // textHeightBehavior: TextHeightBehavior(
              //   applyHeightToFirstAscent: true,
              //   applyHeightToLastDescent: false,
              // ),
            ),
            const Text(
              'Text Data Text Data Text Data',
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                // "wordSpacing" Should be avoided pushes out texts outside parent container area!! ****
                wordSpacing: 35,
              ),
              // strutStyle: StrutStyle(),
              textDirection: TextDirection.rtl,
              softWrap: true,
            ),
            const Text(
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
              'Text Data Text Data ',
              style: TextStyle(
                fontSize: 55,
                color: Colors.black,
                backgroundColor: Colors.white,
                // background: Paint(),
                shadows: [
                  Shadow(
                      color: Colors.red,
                      blurRadius: 1.5,
                      offset: Offset.fromDirection(1.5, 11.5)),
                  Shadow(
                      color: Colors.green,
                      blurRadius: 1.5,
                      offset: Offset.fromDirection(1.5, 6.5))
                ],
                decoration: TextDecoration.combine(
                    [TextDecoration.lineThrough, TextDecoration.underline]),
                decorationColor: Colors.blue,
                decorationStyle: TextDecorationStyle.dashed,
                decorationThickness: 1,
              ),
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.black,
              child: const Text(
                'Text Data Text Data Text Data Text Data Text Data\nText Data',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  // debugLabel: 'DebugLabel',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.3),
                border: Border.all(color: Colors.black, width: 5),
              ),
              child: const Text(
                'Text Data Text Data Text Data Text Data Text Data\nText Data',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  // overflow: TextOverflow.ellipsis,
                ),
                textAlign: TextAlign.end,
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
            ),
          ],
        ),
      ),
    );
  }
}
