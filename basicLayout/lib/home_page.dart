import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class myHomePage extends StatelessWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: 200,
          // Or use constraints
          constraints: const BoxConstraints(
            minHeight: 100,
            maxHeight: 300,
            minWidth: 100,
            maxWidth: 300,
          ),
          child: Image(
            image: AssetImage('files/images/box.png'),
          ),
          // Text('ggg g g g g g'),
          decoration: BoxDecoration(
            // When decoration is used must define all colors in here, not in container, else throughs error
            color: Colors.amber.withOpacity(0.3),
            border: Border.all(color: Colors.black, width: 5),

            // either use shape or borderRadius **
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(15),
            // borderRadius: BorderRadius.all(Radius.circular(15)),

            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5,
                spreadRadius: 35,
                offset: Offset(50, 50),
              ),
              BoxShadow(
                color: Colors.green,
                blurRadius: 5,
                spreadRadius: 25,
                offset: Offset(50, 50),
              ),
              BoxShadow(
                color: Colors.red,
                blurRadius: 5,
                spreadRadius: 15,
                // offset: Offset(30, 30),
              ),
            ],
          ),
          margin: EdgeInsets.only(right: 10),
        ),
        SizedBox(height: 90),
        Container(
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(25),
          height: 300,
          width: 300,
          child: Text(
              'data data data data data data data data data data data data data data data data data data data data data data '),
          // Text(
          //   'Data',
          //   style: TextStyle(
          //     color: Colors.amber.withOpacity(1.0),
          //     fontSize: 50,
          //     fontWeight: FontWeight.bold,
          //     // backgroundColor: Colors.white,
          //   ),
          // ),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            // color: Colors.red,
            gradient: LinearGradient(
              colors: [
                Colors.green,
                const Color(0xFF00CCFF),
              ],
              begin: Alignment.centerLeft,
              end: const FractionalOffset(1.0, 0.5), // x, y cordinate normals
              stops: [0.0, 1.0],
              // tileMode: TileMode.clamp,
            ),
            // image: DecorationImage(
            //   image: AssetImage('files/images/nature.jpg'),
            //   fit: BoxFit.fill,
            //   // colorFilter: ColorFilter.mode(Colors.pink, BlendMode.difference),
            // ),

            // Not useful I guess !!!****
            backgroundBlendMode: BlendMode.difference,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
