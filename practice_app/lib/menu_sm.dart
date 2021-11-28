import 'package:flutter/material.dart';

class MenuSmall extends StatelessWidget {
  const MenuSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
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
                child: Image(image: AssetImage('files/images/menu.png'))),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
