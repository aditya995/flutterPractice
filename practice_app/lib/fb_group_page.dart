import 'package:flutter/material.dart';

class FbGroupPage extends StatelessWidget {
  const FbGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('files/images/fb.png'),
              radius: 150,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.black,
                )),
          ],
        ),
      ),
    ));
  }
}
