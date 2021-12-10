import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              for (var i = 1; i <= 5; i++) ...[
                Text('data $i'),
                // height has to be defined as double values,
                // can not distribute space evenly on it's own
                SizedBox(
                  height: 20,
                )
              ],
              Row(
                children: [
                  for (var i = 1; i <= 4; i++) ...[
                    // Expands to max heigt or width of screen
                    Expanded(
                      child: Card(child: Text('data $i')),
                      flex: (i == 1) ? 2 : 1,
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ],
              ),
              Column(
                children: [
                  for (var i = 1; i <= 2; i++) ...[
                    // Square space for the child widget
                    SizedBox.square(
                      dimension: 50,
                      child: Card(
                        child: Text('data $i'),
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ],
              ),
              Row(
                children: [
                  for (var i = 1; i <= 3; i++) ...[
                    Flexible(
                      // Usually shrinks to fit content
                      child: Card(child: Text('data $i')),
                      flex: (i != 1) ? 2 : 1,
                    ),
                  ],
                ],
              ),
              Row(
                children: [
                  for (var i = 1; i <= 3; i++) ...[
                    Flexible(
                      // when expanded the flex property is visible more clearly
                      child: Card(child: Text('data $i da ')),
                      flex: (i != 1) ? 2 : 1,
                    ),
                  ],
                ],
              ),
              Row(
                children: [
                  for (var i = 1; i <= 3; i++) ...[
                    Flexible(
                      // behaves like expanded()
                      fit: FlexFit.tight,
                      child: Card(child: Text('data $i da ta ')),
                      flex: (i != 1) ? 2 : 1,
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
