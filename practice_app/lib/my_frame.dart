import 'package:flutter/material.dart';

class MyFrame extends StatelessWidget {
  final String str;
  final String imgAdd;
  const MyFrame({required this.str, required this.imgAdd, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthS = screenSize.width;
    var heightS = screenSize.height;
    return Container(
      width: widthS / 2,
      height: heightS / 2,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(image: AssetImage(imgAdd)),
      ),
      child: Column(
        children: [
          Text(str),
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
