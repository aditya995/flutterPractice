import 'package:flutter/material.dart';

import 'menu_big.dart';
import 'menu_sm.dart';

class MyHeadingNav extends StatelessWidget {
  const MyHeadingNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthS = screenSize.width;
    var heightS = screenSize.height;
    return Row(
      children: [
        // Facebook Icon top left **************************

        Container(
          height: 40,
          width: 40,
          child: FloatingActionButton(
            elevation: 0,
            hoverElevation: 0,
            highlightElevation: 0,
            onPressed: () {},
            child: const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('files/images/fb.png'),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),

        // Search Filed top left *********************************

        Container(
          width: (widthS > 1260) ? 280 : 50,
          child: Card(
            color: Colors.black12,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                // Search Icon Button  ***************************

                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  // foregroundColor: Colors.transparent,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        splashRadius: 20,
                        hoverColor: Colors.transparent,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search_rounded,
                          color: Colors.black54,
                        )),
                  ),
                ),

                // Text =>> Search Facebook ***************************

                (widthS > 1260)
                    ? (const Text(
                        'Search Facebook',
                        style: TextStyle(color: Colors.black87),
                      ))
                    : (Container()),
              ],
            ),
          ),
        ),

        // Menu in Different screens  ************************************

        (widthS > 700) ? MenuBig() : MenuSmall(),

        // My Profile Icon button  ****************************************
        (widthS < 1260)
            ? const SizedBox(
                width: 0,
              )
            : Container(
                height: 50,
                width: 110,
                child: Card(
                  color: Colors.black12,
                  elevation: 0,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(children: const <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 15,
                        backgroundImage: AssetImage('files/images/admin.jpg'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Aditya',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
        const SizedBox(
          width: 10,
        ),

        // Add button Top right ******************************************

        CircleAvatar(
          backgroundColor: Colors.black12,
          child: IconButton(
              splashRadius: 20,
              hoverColor: Colors.transparent,
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              )),
        ),
        const SizedBox(
          width: 10,
        ),

        // massenger icon button Top right ******************************************

        Container(
          height: 40,
          width: 40,
          child: FloatingActionButton(
            backgroundColor: Colors.black12,
            elevation: 0,
            hoverElevation: 0,
            highlightElevation: 0,
            onPressed: () {},
            child: const CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 10,
              backgroundImage: AssetImage('files/images/msngr.png'),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),

        // Bell button Top right ******************************************

        Container(
          height: 40,
          width: 40,
          child: FloatingActionButton(
            backgroundColor: Colors.black12,
            elevation: 0,
            hoverElevation: 0,
            highlightElevation: 0,
            onPressed: () {},
            child: const CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 10,
              backgroundImage: AssetImage('files/images/bell.png'),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),

        // Account button Top right ******************************************

        CircleAvatar(
          backgroundColor: Colors.black12,
          child: IconButton(
              splashRadius: 20,
              hoverColor: Colors.transparent,
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.black,
                size: 25,
              )),
        ),
      ],
    );
  }
}
