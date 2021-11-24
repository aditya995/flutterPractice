import 'package:flutter/material.dart';
import 'main.dart';

class MyFrame extends StatelessWidget {
  const MyFrame({required String str, Key? key}) : super(key: key);
// TODO:: Change this getter !!!
  String get str => 'Why \n\n\n\n\n\n\nnot change ';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthS = screenSize.width;
    var heightS = screenSize.height;
    //String str = str;
    return Container(
      width: widthS / 2,
      height: heightS / 2,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(image: AssetImage('files/images/1.jpg')),
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
