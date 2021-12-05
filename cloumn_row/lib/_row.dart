import 'package:flutter/material.dart';

class learnRow extends StatelessWidget {
  const learnRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 300,
      height: 200,
      color: Colors.lightBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.start,

        // mainAxisSize: MainAxisSize.min,

        // verticalDirection: VerticalDirection.up,

        children: const [
          Text(' 1Adata 1|'),
          Text(' 2Adata 2|'),
          Text(' 10Adata 10|'),
        ],
      ),
    );
  }
}
