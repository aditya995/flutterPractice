import 'package:flutter/material.dart';

final list = [
  'files/images/admin.jpg',
  'files/images/1.jpg',
  'files/images/2.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/3.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/2.jpg',
  'files/images/3.jpg',
  'files/images/4.jpg',
];
const limitf = 13;
const limitSm = 20;
var limit = 0;

class ImgLists extends StatelessWidget {
  const ImgLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthS = screenSize.width;
    var heightS = screenSize.height;
    if (widthS < 900 && widthS > 700) {
      var current = 900 - widthS;
      current = current / 50;
      int val = current.toInt() + 1;
      limit = limitf - val;
    } else if (widthS > 700) {
      limit = limitf;
    } else {
      var current = 700 - widthS;
      current = current / 35;
      int val = current.toInt() + 1;
      limit = limitSm - val;
    }
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: limit.toDouble() * 31,
        height: 40,
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            for (var i = 0; i < limit; i++)
              Positioned(
                left: (30 * i.toDouble()),
                width: 40,
                height: 40,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.transparent, width: 1),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    padding: EdgeInsets.all(2),
                    child: FloatingActionButton(
                      elevation: 0,
                      hoverElevation: 0,
                      focusElevation: 0,
                      highlightElevation: 0,
                      onPressed: () {},
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(list[i]),
                      ),
                    )),
              )
          ],
        ),
      ),
    );
  }
}
