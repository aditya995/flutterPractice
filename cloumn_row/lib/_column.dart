import 'package:flutter/material.dart';

class learnColumn extends StatelessWidget {
  const learnColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.lightBlue,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.start,

        // mainAxisSize: MainAxisSize.min,

        // verticalDirection: VerticalDirection.up,

        children: const [
          Text(' 1Adata 1'),
          Text(' 2Adata 2'),
          Text(' 10Adata 10'),
          Text(' 11Adata 11'),
          Text(' 21Adata 12'),
          Text(' 22Adata 100'),
        ],
      ),
    );
  }
}
