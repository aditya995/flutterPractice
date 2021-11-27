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
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundColor: Colors.black12,
              child: IconButton(
                  splashRadius: 20,
                  hoverColor: Colors.transparent,
                  onPressed: () {},
                  icon: Icon(
                    Icons.search_rounded,
                    color: Colors.black54,
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black54,
              hoverColor: Colors.black12,
              focusColor: Colors.black12,
              splashColor: Colors.white,
              elevation: 0,
              hoverElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              onPressed: () {},
              child: Icon(
                Icons.menu_rounded,
                size: 40,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundColor: Colors.black12,
              child: IconButton(
                  splashRadius: 20,
                  hoverColor: Colors.transparent,
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
