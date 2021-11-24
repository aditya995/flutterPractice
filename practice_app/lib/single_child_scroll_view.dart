import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  const MySingleChildScrollView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'SingleChildScrollView',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        //backgroundColor: Colors.white,
        body: SingleChildScrollView(
          reverse: true, // Scroll to top or bottom
          child: Column(children: [
            Container(
              height: 400,
              color: Colors.amber,
            ),
            Container(
              height: 400,
              color: Colors.red,
            ),
            Icon(
              Icons.home_max_rounded,
              size: 100,
              color: Colors.blue,
            ),
            Icon(
              Icons.home_max_rounded,
              size: 150,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: ScrollPhysics(),
              reverse: true,
              child: Row(
                children: [
                  Icon(
                    Icons.home_max_rounded,
                    size: 100,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.home_max_rounded,
                    size: 150,
                  ),
                  IconButton(
                    iconSize: 50,
                    color: Colors.green,
                    highlightColor: Colors.purple,
                    tooltip: 'Hovered',
                    // splashColor: Colors.red,
                    splashRadius: 100,
                    onPressed: () => {},
                    icon: Icon(Icons.accessibility_new_outlined),
                  ),
                  TextButton(
                    child: Text('Button'),
                    onLongPress: () => {print('OnLongPress')},
                    onPressed: () => {print('OnPress')},
                  ),
                  CircleAvatar(
                    radius: 150,
                    child: Text('Image Radial'),
                    backgroundImage: AssetImage('files/images/4.jpg'),
                  ),
                ],
              ),
            ),
            IconButton(
              iconSize: 50,
              color: Colors.green,
              highlightColor: Colors.purple,
              tooltip: 'Hovered',
              // splashColor: Colors.red,
              splashRadius: 100,
              onPressed: () => {},
              icon: Icon(Icons.accessibility_new_outlined),
            ),
            TextButton(
              child: Text('Button'),
              onLongPress: () => {print('OnLongPressd')},
              onPressed: () => {print('OnPresd')},
            ),
            CircleAvatar(
              radius: 150,
              child: Text('Image Radial'),
              backgroundImage: AssetImage('files/images/4.jpg'),
            ),
          ]),
        ));
  }
}
