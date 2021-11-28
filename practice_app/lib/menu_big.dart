import 'package:flutter/material.dart';

class MenuBig extends StatelessWidget {
  const MenuBig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthS = screenSize.width;
    var heightS = screenSize.height;
    return Expanded(
        child: Row(
      children: [
        Expanded(child: Container()),
        Container(
          constraints: BoxConstraints(
            minWidth: 55,
          ),
          height: 45,
          width: widthS / 20,
          child: FloatingActionButton(
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
            child: const Icon(
              Icons.home_outlined,
              size: 40,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          constraints: BoxConstraints(
            minWidth: 55,
          ),
          height: 45,
          width: widthS / 20,
          child: FloatingActionButton(
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
              child: Image(image: AssetImage('files/images/friends.png'))),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          constraints: BoxConstraints(
            minWidth: 55,
          ),
          height: 45,
          width: widthS / 20,
          child: FloatingActionButton(
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
              child: Image(image: AssetImage('files/images/watch.png'))),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          constraints: BoxConstraints(
            minWidth: 55,
          ),
          height: 45,
          width: widthS / 20,
          child: FloatingActionButton(
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
              child: Image(image: AssetImage('files/images/groups.png'))),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          constraints: BoxConstraints(
            minWidth: 55,
          ),
          height: 45,
          width: widthS / 20,
          child: FloatingActionButton(
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
              // child: Image(image: AssetImage('files/images/gaming.png'))),
              child: (widthS > 1100)
                  ? Image(image: AssetImage('files/images/gaming.png'))
                  : Image(image: AssetImage('files/images/menu.png'))),
        ),
        Expanded(child: Container()),
      ],
    ));
  }
}
