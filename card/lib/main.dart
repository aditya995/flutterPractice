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
        appBar: AppBar(
          title: Text('Card()'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Card(
                child: Text(
                  'Some text to see\nHello, this is to test the default card() widget\'s height and width.',
                ),
                color: Colors.amber,
              ),
              Card(
                child: Text(
                  'Some text to see\nHello!!',
                ),
                color: Colors.amber,
                shadowColor: Colors.red,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(7, 8)),
                  side: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 250,
                  child: Card(
                    child: Text(
                      'Some text to see\nHello, this is to test the default card() 1 1 1 1 1 widget\'s height and width.',
                    ),
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      // ****** cards can not have eliptical border instean use rounded !!!
                      // if eliptical used it behaves like rounded border *************!!!!!!!
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(105, 30)),
                      side: BorderSide(
                        color: Colors.green,
                        width: 3,
                      ),
                    ),
                    margin: EdgeInsets.only(left: 15),
                    clipBehavior: Clip.antiAlias,
                    borderOnForeground: false,
                  ),
                ),
              ),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
