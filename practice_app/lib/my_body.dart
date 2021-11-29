import 'package:flutter/material.dart';
import 'package:practice_app/img_lists.dart';
import 'package:practice_app/posts.dart';

class MyBody extends StatelessWidget {
  final postNumber;
  const MyBody({Key? key, required this.postNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthS = screenSize.width;
    var heightS = screenSize.height;
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          )),
          clipBehavior: Clip.antiAlias,
          child: const Image(
            image: AssetImage('files/images/cover.jpg'),
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                // Heading ************************************
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'FaceBook Group Page',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(children: const [
                  Icon(
                    Icons.lock,
                    color: Colors.black54,
                    size: 20,
                  ),
                  Text(
                    'Private Group . 95 members',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    // Images On top of each-other **********************

                    const ImgLists(),
                    Expanded(child: Container()),

                    // Right Action buttons ****************************

                    (widthS < 701)
                        ? SizedBox()
                        : Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.black87,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.child_friendly_sharp),
                                    Icon(Icons.keyboard_arrow_down_rounded),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.black87,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.child_friendly_sharp),
                                    Icon(Icons.keyboard_arrow_down_rounded),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.black87,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.child_friendly_sharp),
                                    Icon(Icons.keyboard_arrow_down_rounded),
                                  ],
                                ),
                              ),
                            ],
                          ),

                    // Bottom Action buttons ****************************
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                (widthS < 701)
                    ? Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                side: BorderSide(
                                  color: Colors.black87,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.child_friendly_sharp),
                                  Icon(Icons.keyboard_arrow_down_rounded),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                side: BorderSide(
                                  color: Colors.black87,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.child_friendly_sharp),
                                  Icon(Icons.keyboard_arrow_down_rounded),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                side: BorderSide(
                                  color: Colors.black87,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.child_friendly_sharp),
                                  Icon(Icons.keyboard_arrow_down_rounded),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                side: BorderSide(
                                  color: Colors.black87,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.child_friendly_sharp),
                                  Icon(Icons.keyboard_arrow_down_rounded),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),

                Container(
                  height: 1,
                  color: Colors.black26,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 1,
                  color: Colors.black26,
                ),
                // Posts ****************************************

                Column(
                  children: <Widget>[
                    for (var i = 1; i <= postNumber; i++)
                      Posts(
                        count: i,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
