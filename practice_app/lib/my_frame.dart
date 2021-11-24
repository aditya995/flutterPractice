import 'package:flutter/material.dart';

class MyFrame extends StatelessWidget {
  final String str;
  final String imgAdd;
  const MyFrame(
      {required String this.str, required String this.imgAdd, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthS = screenSize.width;
    var heightS = screenSize.height;
    //String str = str;
    return Container(
      // margin: EdgeInsets.symmetric(
      //   horizontal: widthS / 30,
      //   vertical: heightS / 30,
      // ),
      width: widthS / 2,
      height: heightS / 2,
      decoration: BoxDecoration(
        border: Border.all(width: 5, color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(image: AssetImage(imgAdd)),
      ),
      child: Column(
        children: [
          Text(
            str,
            style: TextStyle(
              color: Colors.black38,
              backgroundColor: Colors.blue,
            ),
          ),
          // Image.asset(
          //   'files/images/1.jpg',
          //   color: Colors.amber[600],
          //   colorBlendMode: BlendMode.overlay,
          // ),
        ],
      ),
    );
  }
}
