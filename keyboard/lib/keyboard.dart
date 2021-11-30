import 'package:flutter/material.dart';

import 'vars.dart';

class MyKeyBoard extends StatefulWidget {
  const MyKeyBoard({Key? key}) : super(key: key);

  @override
  _MyKeyBoardState createState() => _MyKeyBoardState();
}

class _MyKeyBoardState extends State<MyKeyBoard> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var widthS = screenSize.width;
    var heightS = screenSize.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Keyboard App'),
          centerTitle: true,
          backgroundColor: Colors.cyan[500],
        ),
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            color: Colors.cyan[200],
            constraints: BoxConstraints(
              minHeight: heightS,
            ),
            child: Column(
              children: [
                //  Area Before keyboard
                Container(
                  constraints: BoxConstraints(
                    minHeight: heightS - 200,
                    // maxHeight: 150,
                  ),
                  color: Colors.blue[400],
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (var i = 0; i < saved.length; i++)
                              Container(
                                constraints: BoxConstraints(
                                  minWidth: 200,
                                  minHeight: 30,
                                  // maxHeight: 150,
                                ),
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  'Time when saved : ${timesOf_saved[i]}\n Post: Id#__${i + 1}\n${saved[i]}',
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        'Start Writing below!!!',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        constraints: BoxConstraints(
                          minWidth: 200,
                          minHeight: 30,
                          maxHeight: 150,
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SingleChildScrollView(
                            reverse: true, child: Text('${inputFields}|')),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            timesOf_saved.add(
                                '${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second} (h/m/s), date: ${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year} (M/D/Y)');
                            saved.add(inputFields);
                            inputFields = '';
                          });
                        },
                        child: Text(
                          'Save it!',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.green[800]),
                      ),
                      SizedBox(
                        height: 35,
                        width: 120,
                        child: TextButton(
                          onPressed: () {},
                          onLongPress: () {
                            setState(() {
                              inputFields = '';
                            });
                          },
                          child: Text(
                            currentKey,
                            style: TextStyle(color: Colors.white),
                          ),
                          style: TextButton.styleFrom(
                            side: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Keys in the keyboard   ***************************************
                Container(
                  height: 200,
                  width: widthS,
                  color: Colors.black87,
                  child: Column(
                    children: [
                      //  KeyRow 1 *************************************
                      Row(
                        children: [
                          for (var i = 0; i < keysList1.length; i++)
                            SizedBox(
                              height: 35,
                              width: widthS / keysList1.length,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (keysList1[i] == 'delete') {
                                      var sub = inputFields.substring(
                                          0,
                                          (inputFields.length - 1 < 0)
                                              ? 0
                                              : inputFields.length - 1);
                                      inputFields = sub;
                                      currentKey = keysList1[i];
                                    } else if (cap == true) {
                                      inputFields += keysList1Cap[i];
                                      currentKey = keysList1Cap[i];
                                    } else {
                                      inputFields += keysList1[i];
                                      currentKey = keysList1[i];
                                    }
                                  });
                                },
                                onLongPress: () {
                                  setState(() {
                                    inputFields = '';
                                  });
                                },
                                child: (keysList1[i] == 'delete')
                                    ? Icon(
                                        Icons.cancel_presentation_rounded,
                                        color: Colors.white,
                                        size: 15,
                                      )
                                    : (cap == true)
                                        ? Text(
                                            keysList1Cap[i],
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        : Text(
                                            keysList1[i],
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                style: TextButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),

                      //  KeyRow 2 *************************************

                      Row(
                        children: [
                          for (var i = 0; i < keysList2.length; i++)
                            SizedBox(
                              height: 35,
                              width: widthS / keysList2.length,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (cap == true) {
                                      inputFields += keysList2Cap[i];
                                      currentKey = keysList2Cap[i];
                                    } else {
                                      inputFields += keysList2[i];
                                      currentKey = keysList2[i];
                                    }
                                  });
                                },
                                child: Text(
                                  (cap == true)
                                      ? keysList2Cap[i]
                                      : keysList2[i],
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: TextButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),

                      //  KeyRow 3 *************************************

                      Row(
                        children: [
                          for (var i = 0; i < keysList3.length; i++)
                            SizedBox(
                              height: 35,
                              width: widthS / keysList3.length,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (keysList3[i] == 'enter') {
                                      inputFields += '\n';
                                      currentKey = keysList3[i];
                                    } else if (keysList3[i] == 'CapsOff' &&
                                        cap == true) {
                                      cap = false;
                                      currentKey = keysList3[i];
                                    } else if (keysList3[i] == 'CapsOff' &&
                                        cap == false) {
                                      cap = true;
                                      currentKey = keysList3Cap[i];
                                    } else {
                                      if (cap == true) {
                                        inputFields += keysList3Cap[i];
                                        currentKey = keysList3Cap[i];
                                      } else {
                                        inputFields += keysList3[i];
                                        currentKey = keysList3[i];
                                      }
                                    }
                                  });
                                },
                                child: (keysList3[i].length < 2)
                                    ? Text(
                                        (cap == true)
                                            ? keysList3Cap[i]
                                            : keysList3[i],
                                        style: TextStyle(color: Colors.white),
                                      )
                                    : (keysList3[i] == 'enter')
                                        ? Icon(
                                            Icons.arrow_downward_rounded,
                                            color: Colors.white,
                                            size: 15,
                                          )
                                        : (cap == false)
                                            ? Icon(
                                                Icons.brightness_auto_outlined,
                                                color: Colors.white,
                                                size: 15,
                                              )
                                            : Icon(
                                                Icons.brightness_auto,
                                                size: 20,
                                              ),
                                style: TextButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),

                      //  KeyRow 4 *************************************

                      Row(
                        children: [
                          for (var i = 0; i < keysList4.length; i++)
                            SizedBox(
                              height: 35,
                              width: widthS / keysList4.length,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (cap == true) {
                                      inputFields += keysList4Cap[i];
                                      currentKey = keysList4Cap[i];
                                    } else {
                                      inputFields += keysList4[i];
                                      currentKey = keysList4[i];
                                    }
                                  });
                                },
                                child: (cap == true)
                                    ? Text(
                                        keysList4Cap[i],
                                        style: TextStyle(color: Colors.white),
                                      )
                                    : Text(
                                        keysList4[i],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                style: TextButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),

                      //  KeyRow 5 *************************************

                      Row(
                        children: [
                          for (var i = 0; i < keysList5.length; i++)
                            SizedBox(
                              height: 35,
                              width: widthS / keysList5.length,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (keysList5[i] == 'space') {
                                      inputFields += ' ';
                                    } else {
                                      if (cap == true) {
                                        inputFields += keysList5Cap[i];
                                        currentKey = keysList5Cap[i];
                                      } else {
                                        inputFields += keysList5[i];
                                        currentKey = keysList5[i];
                                      }
                                    }
                                  });
                                },
                                child: Text(
                                  keysList5[i],
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: TextButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
