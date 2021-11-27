import 'package:flutter/material.dart';
import 'my_frame.dart';

class MyGallery extends StatelessWidget {
  const MyGallery({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: const Text(
          'Gallery Page',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image_outlined,
                size: 20,
                color: Colors.blue,
              ),
              Text('First Slidable elements in reversed !!'),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Row(
              children: [
                MyFrame(
                  str: 'Element 1',
                  imgAdd: 'files/images/1.jpg',
                ),
                MyFrame(
                  str: 'Element 2',
                  imgAdd: 'files/images/2.jpg',
                ),
                MyFrame(
                  str: 'Element 3',
                  imgAdd: 'files/images/3.jpg',
                ),
                MyFrame(
                  str: 'Element 4\nkskdjsjkdsj\n\nsdfsdf',
                  imgAdd: 'files/images/4.jpg',
                ),
              ],
            ),
          ),
          IconButton(
            iconSize: 30,
            color: Colors.blue[300],
            // highlightColor: Colors.purple,
            tooltip: 'Icon Hovered1',
            splashColor: Colors.black,
            splashRadius: 50,
            onPressed: () => {print('Read more pressed1')},
            icon: Icon(Icons.read_more),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image_outlined,
                size: 20,
                color: Colors.blue,
              ),
              Text('First Slidable elements in reversed !!'),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MyFrame(
                  str: 'WaterFalls',
                  imgAdd: 'files/images/3.jpg',
                ),
                MyFrame(
                  str: 'Desert',
                  imgAdd: 'files/images/4.jpg',
                ),
              ],
            ),
          ),
          IconButton(
            iconSize: 30,
            color: Colors.blue[300],
            highlightColor: Colors.green,
            tooltip: 'Icon Hovered2',
            // splashColor: Colors.black,
            splashRadius: 50,
            onPressed: () => {print('Read more pressed2')},
            icon: Icon(Icons.read_more),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image_outlined,
                size: 20,
                color: Colors.blue,
              ),
              Text('First Slidable elements in reversed !!'),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: false,
            child: Row(
              children: [
                MyFrame(
                  str: 'Element 1',
                  imgAdd: 'files/images/1.jpg',
                ),
                MyFrame(
                  str: 'Element 2',
                  imgAdd: 'files/images/2.jpg',
                ),
                MyFrame(
                  str: 'Element 3',
                  imgAdd: 'files/images/3.jpg',
                ),
                MyFrame(
                  str: 'Element 4\nkskdjsjkdsj\n\nsdfsdf',
                  imgAdd: 'files/images/4.jpg',
                ),
              ],
            ),
          ),
          TextButton(
            child: Text('Read More'),
            onLongPress: () => {print('OnLongPress3')},
            onPressed: () => {print('OnPress3')},
          ),
          TextButton(
            child: Icon(
              Icons.read_more,
              size: 20,
              color: Colors.blue,
            ),
            onLongPress: () => {print('OnLongPress4')},
            onPressed: () => {print('OnPress4')},
          ),
        ]),
      ),
    );
  }
}
