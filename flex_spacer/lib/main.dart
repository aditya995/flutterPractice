import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Flex(
          // Basically can be used as both column() and row()
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(), // Automatically distributes space in between **** evenly!!
                for (var i = 1; i <= 3; i++) ...[
                  Text('data in row'),
                  Spacer(),
                ] // Careful dont use spacer() inside singleChildScrollView ****
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('data in row'),
                Spacer(), // Careful dont use spacer() inside singleChildScrollView ****
                Text('data in row'),
                Spacer(),
                Text('data in row'),
                Text('data in row'),
              ],
            ),
            Text('data in cloumn'),
            Spacer(), // Careful dont use spacer() inside singleChildScrollView ****
            Text('data in column'),
            Text('data in column'),
            Spacer(),
            Text('data in column'),
          ],
        ),
      ),
    );
  }
}
