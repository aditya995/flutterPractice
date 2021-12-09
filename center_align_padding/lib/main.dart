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
      title: 'Flutter Demo',
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text('Center, Align, Padding widget'),
        ),
        body: Column(
          children: [
            // // All goes to left of the screen
            // Container(
            //   color: Colors.amber,
            //   child: Text('Data inside the container'),
            // ),
            // Container(
            //   color: Colors.amber,
            //   child: Text('Data inside the container'),
            // ),

            //  //  Center(),
            // // If one of the is inside the Center() widget, all gets centered!
            // Container(
            //   color: Colors.amber,
            //   child: Text(
            //       'Data inside the container. \nAtleast one container inside Center() widget'),
            // ),
            // Center(
            //   child: Container(
            //     color: Colors.amber,
            //     child: Text(
            //         'Data inside the container. \nAtleast one container inside Center() widget'),
            //   ),
            // ),

            // //  Padding(),
            // Container(
            //   height: 2,
            //   color: Colors.red,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: Container(
            //     color: Colors.amber,
            //     child: Text(
            //         'Data inside the container. \ncontainer inside Padding() widget'),
            //   ),
            // ),
            // Container(
            //   height: 2,
            //   color: Colors.red,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(100.0),
            //   child: Container(
            //     color: Colors.amber,
            //     child: Text(
            //         'Data inside the container. \ncontainer inside Padding() widget'),
            //   ),
            // ),
            // Container(
            //   height: 2,
            //   color: Colors.red,
            // ),
            // Container(
            //   color: Colors.amber,
            //   child: Text(
            //       'Data inside the container. \ncontainer inside Padding() widget'),
            // ),
            // Container(
            //   height: 2,
            //   color: Colors.red,
            // ),

            // Align ()
            // If one of the is inside the Align() widget, all gets aligned!!
            Container(
              color: Colors.amber,
              child: Text(
                  'Data inside the container. \nAtleast one container inside Align() widget'),
            ),
            Align(
              child: Container(
                color: Colors.amber,
                child: Text(
                    'Data inside the container. \nAtleast one container inside Align() widget'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
