import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('singleChildScrollView'),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse:
                    true, // Changes the direction of animation controller *******
                // physics: NeverScrollableScrollPhysics(),
                // physics: ClampingScrollPhysics(),
                physics: BouncingScrollPhysics(),
                controller: myController,
                child: Row(
                  children: [
                    for (var i = 1; i <= 10; i++)
                      Container(
                        color: Colors.amber,
                        height: 100,
                        width: 100,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        child: Text(
                            'text : $i data data data data data data data data data data data data data data data data data data '),
                      ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        var start = 0.0;
                        // going to scroll to last instead of going to first element
                        // Because in singleChildScrollView -> reverse : true, ****
                        myController.animateTo(start,
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInBack);
                      });
                    },
                    child: Icon(Icons.arrow_back_rounded),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        var end = myController.position.maxScrollExtent;
                        // going to scroll to first instead of going to last element
                        // Because in singleChildScrollView -> reverse : true, ****
                        myController.animateTo(end,
                            duration: Duration(seconds: 1),
                            curve: Curves.easeIn);
                      });
                    },
                    child: Icon(Icons.arrow_forward_rounded),
                  ),
                ],
              ),
              for (var i = 0; i < 5; i++)
                Container(
                  color: Colors.amber,
                  height: 100,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Text(
                      'text : $i \ndata data data data data data data data data data data data data data data data data data '),
                ),
              Container()
            ],
          ),
        )),
      ),
    );
  }
}
