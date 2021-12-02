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
    var widthS = screenSize.width - (screenSize.width / 20);
    var heightS = screenSize.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Keyboard App'),
          centerTitle: true,
          backgroundColor: Colors.cyan[500],
        ),
        floatingActionButton: // Keys in the keyboard   ***************************************
            Container(
          height: 275,
          width: widthS,
          color: Colors.black87,
          child: Column(
            children: [
              //  KeyRow 1 *************************************
              Row(
                children: [
                  for (var i = 0; i < keysList1.length; i++)
                    SizedBox(
                      height: keyHeight,
                      width: widthS / keysList1.length,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            cap = checkLock || capTemp;
                            capTemp = false;
                            if (cap == true) {
                              inputFields.add(keysList1Cap[i]);
                              currentKey = keysList1Cap[i];
                            } else {
                              inputFields.add(keysList1[i]);
                              currentKey = keysList1[i];
                            }
                            cap = checkLock || capTemp;
                          });
                        },
                        onLongPress: () {},
                        child: (cap == true)
                            ? Text(
                                keysList1Cap[i],
                                style: TextStyle(
                                    color: Colors.white, fontSize: keyfontSize),
                              )
                            : Text(
                                keysList1[i],
                                style: TextStyle(
                                    color: Colors.white, fontSize: keyfontSize),
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
                      height: keyHeight,
                      width: widthS / keysList2.length,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            cap = checkLock || capTemp;
                            capTemp = false;
                            if (cap == true) {
                              inputFields.add(keysList2Cap[i]);
                              currentKey = keysList2Cap[i];
                            } else {
                              inputFields.add(keysList2[i]);
                              currentKey = keysList2[i];
                            }
                            cap = checkLock || capTemp;
                          });
                        },
                        child: Text(
                          (cap == true) ? keysList2Cap[i] : keysList2[i],
                          style: TextStyle(
                              color: Colors.white, fontSize: keyfontSize),
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
                  SizedBox(
                    height: keyHeight,
                    width: (widthS / (keysList3.length + 1)) / 2,
                  ),
                  for (var i = 0; i < keysList3.length; i++)
                    SizedBox(
                      height: 50,
                      width: widthS / (keysList3.length + 1),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            cap = checkLock || capTemp;
                            capTemp = false;
                            if (cap == true) {
                              inputFields.add(keysList3Cap[i]);
                              currentKey = keysList3Cap[i];
                            } else {
                              inputFields.add(keysList3[i]);
                              currentKey = keysList3[i];
                            }

                            cap = checkLock || capTemp;
                          });
                        },
                        child: Text(
                          (cap == true) ? keysList3Cap[i] : keysList3[i],
                          style: TextStyle(
                              color: Colors.white, fontSize: keyfontSize),
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
                      height: keyHeight,
                      width: widthS / keysList4.length,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            cap = checkLock || capTemp;
                            capTemp = false;
                            if (keysList4[i] == 'delete') {
                              inputFields.removeLast();
                              currentKey = (cap == false)
                                  ? keysList4[i]
                                  : keysList4Cap[i];
                            } else if (keysList4[i] == 'CapsOff' &&
                                cap == true) {
                              capPressedNTimes++;
                              checkLock = capPressedNTimes == 2;
                              cap = checkLock || capTemp;
                              if (capPressedNTimes == 2) {
                                capPressedNTimes = 0;
                              }

                              currentKey = (cap == false)
                                  ? keysList4[i]
                                  : keysList4Cap[i];
                            } else if (keysList4[i] == 'CapsOff' &&
                                cap == false) {
                              cap = true;
                              capTemp = true;
                              checkLock = false;
                              capPressedNTimes = 1;

                              currentKey = (cap == false)
                                  ? keysList4[i]
                                  : keysList4Cap[i];
                            } else if (cap == true) {
                              inputFields.add(keysList4Cap[i]);
                              currentKey = keysList4Cap[i];
                            } else {
                              inputFields.add(keysList4[i]);
                              currentKey = keysList4[i];
                            }
                            cap = checkLock || capTemp;
                          });
                        },
                        onLongPress: () {
                          setState(() {
                            if (keysList4[i] == 'delete') inputFields.clear();
                          });
                          print(inputFields);
                        },
                        child: (keysList4[i].length < 2)
                            ? Text(
                                (cap == true) ? keysList4Cap[i] : keysList4[i],
                                style: TextStyle(
                                    color: Colors.white, fontSize: keyfontSize),
                              )
                            : (keysList4[i] == 'delete')
                                ? Icon(
                                    Icons.cancel_presentation_rounded,
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
                                        color: Colors.blue,
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
                      height: keyHeight,
                      width: (keysList5[i] == 'space')
                          ? (widthS / keysList5.length) * 2.5
                          : (keysList5[i] == 'enter')
                              ? (widthS / (keysList5.length + 1)) +
                                  ((widthS / (keysList5.length + 1)) / 2)
                              : (widthS / keysList5.length) / 1.45,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            cap = checkLock || capTemp;
                            capTemp = false;
                            if (keysList5[i] == 'enter') {
                              inputFields.add('\n');
                              currentKey = (cap == false)
                                  ? keysList5[i]
                                  : keysList5Cap[i];
                            } else if (keysList5[i] == 'space') {
                              inputFields.add(' ');
                              currentKey = (cap == false)
                                  ? keysList5[i]
                                  : keysList5Cap[i];
                            } else {
                              if (cap == true) {
                                inputFields.add(keysList5Cap[i]);
                                currentKey = keysList5Cap[i];
                              } else {
                                inputFields.add(keysList5[i]);
                                currentKey = keysList5[i];
                              }
                            }
                            cap = checkLock || capTemp;
                          });
                        },
                        child: (keysList5[i] == 'enter' ||
                                keysList5[i] == 'space')
                            ? (keysList5[i] == 'enter')
                                ? Icon(
                                    Icons.arrow_downward_rounded,
                                    color: Colors.blue,
                                    size: 15,
                                  )
                                : (keysList5[i] == 'space')
                                    ? Icon(
                                        Icons.horizontal_rule_rounded,
                                        color: Colors.white,
                                        size: 15,
                                      )
                                    : Text('')
                            : Text(
                                (cap == true) ? keysList5Cap[i] : keysList5[i],
                                style: TextStyle(
                                  fontSize: keyfontSize,
                                  color: Colors.white,
                                ),
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

        // Body area ************************************************************
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            alignment: Alignment.bottomCenter,
            color: Colors.cyan[200],
            constraints: BoxConstraints(
              minHeight: heightS,
            ),
            child:
                //  Area Before keyboard  ****************************************************
                Column(
              children: [
                //  Posts viewing container ******************************************
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
                            'Time when saved : ${timesOf_saved[i]}\n Post: Id#__${i + 1}\n${inputStr(saved[i])}',
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
                  height: heightS / 3.75,
                ),

                //  Display Current Button which is pressed !! *********************************************
                SizedBox(
                  height: 55,
                  width: 150,
                  child: Text(
                    '[Pressed:   ' +
                        currentKey +
                        '  ]\n\n\xA9 Aditya Showrov 😀',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, backgroundColor: Colors.white),
                  ),
                ),

                //  Save it button ***********************************************************
                TextButton(
                  onPressed: () {
                    setState(() {
                      timesOf_saved.add(
                          '${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second} (h/m/s), date: ${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year} (M/D/Y)');
                      saved.add([...inputFields]);
                      inputFields.clear();
                    });
                  },
                  child: Text(
                    'Save it!',
                    style: TextStyle(color: Colors.white),
                  ),
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.green[800]),
                ),

                //  Heading Before Input area *******************************************
                Text(
                  'Start Writing below!!!',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                //  Input field ************************************************************
                Container(
                  constraints: BoxConstraints(
                    minWidth: 50,
                    maxWidth: widthS / 1.5,
                    minHeight: 30,
                    maxHeight: 150,
                  ),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                      reverse: true, child: Text('${inputStr(inputFields)}|')),
                ),
                SizedBox(
                  height: 300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
