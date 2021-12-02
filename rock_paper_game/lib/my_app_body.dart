import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var myIcons = {
  'R': FontAwesomeIcons.handRock,
  'S': FontAwesomeIcons.handScissors,
  'P': FontAwesomeIcons.handPaper,
  'git': FontAwesomeIcons.github,
  'whatsapp': FontAwesomeIcons.whatsapp,
  'messenger': FontAwesomeIcons.facebookMessenger,
  'phone': FontAwesomeIcons.phoneAlt,
  'heartEmo': FontAwesomeIcons.grinHearts,
  'laughEmo': FontAwesomeIcons.grinSquint,
  'happy': FontAwesomeIcons.grinBeam,
};
var values = ['R', 'S', 'P'];
var emoji = [
  myIcons['heartEmo'],
  myIcons['laughEmo'],
  myIcons['happy'],
];
var dialogues = [
  [
    'Win!!\nYeah you won!!🤩',
    'Win!!\nYou are Lucky this time!🤩',
    'Win!!\nIt\'s cool, isn\'t it?!!🤩',
  ],
  [
    'Lost!!\nYour luck ran out here🤣',
    'Lost!!\nSo unlucky🤣',
    'Lost!!\nYou lost, try again🤣',
  ],
  [
    'Tie!!\nTie with AI!🥴',
    'Tie!!\nNobody wins 🥴',
    'Tie!!\nWhy you copy me!!🥴',
  ]
];
var dialogueIndex = 2;
var gameResult = 'T';
var showRes = false;
var playerIn = myIcons['happy'];
var aiInput = myIcons['happy'];

class MyAppBody extends StatefulWidget {
  const MyAppBody({Key? key}) : super(key: key);

  @override
  _MyAppBodyState createState() => _MyAppBodyState();
}

class _MyAppBodyState extends State<MyAppBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  AI Inputs VS Player Input fields ********************
        SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'AI',
                    style: TextStyle(fontSize: 36),
                  ),
                  FaIcon(
                    aiInput,
                    size: 100,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Player',
                    style: TextStyle(fontSize: 36),
                  ),
                  FaIcon(
                    playerIn,
                    size: 100,
                  ),
                ],
              )
            ],
          ),
        ),

        //  Result field ********************************************

        (showRes)
            ? Container(
                height: 200,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      dialogues[dialogueIndex][Random().nextInt(3)],
                      style: TextStyle(fontSize: 24),
                    ),
                    for (var i = 0; i < 3; i++)
                      FaIcon(
                        emoji[dialogueIndex],
                        size: 15,
                      ),
                  ],
                ),
              )
            : Container(
                height: 200,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Please play my Game',
                      style: TextStyle(fontSize: 24),
                    ),
                    for (var i = 0; i < 3; i++)
                      FaIcon(
                        myIcons['happy'],
                        size: 15,
                      ),
                  ],
                ),
              ),

        //  Buttons fo User input **************************************
        SizedBox(
          width: 200,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    showRes = true;
                    aiInput = myIcons[values[Random().nextInt(3)]];
                    playerIn = myIcons['R'];
                    var flag = winCheck();
                    setDialogueIndex(flag);
                  });
                },
                icon: FaIcon(myIcons['R']),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    showRes = true;
                    aiInput = myIcons[values[Random().nextInt(3)]];
                    playerIn = myIcons['P'];
                    var flag = winCheck();
                    setDialogueIndex(flag);
                  });
                },
                icon: FaIcon(myIcons['P']),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    showRes = true;
                    aiInput = myIcons[values[Random().nextInt(3)]];
                    playerIn = myIcons['S'];
                    var flag = winCheck();
                    setDialogueIndex(flag);
                  });
                },
                icon: FaIcon(myIcons['S']),
              )
            ],
          ),
        ),

        // Bottom contacts field ****************************************

        SizedBox(
          width: 400,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FaIcon(myIcons['git']),
              FaIcon(myIcons['whatsapp']),
              FaIcon(myIcons['messenger']),
              FaIcon(myIcons['phone']),
            ],
          ),
        ),
      ],
    );
  }
}

void setDialogueIndex(String flag) {
  if (flag == 'W') {
    dialogueIndex = 0;
  } else if (flag == 'L') {
    dialogueIndex = 1;
  } else if (flag == 'T') {
    dialogueIndex = 2;
  }
}

String winCheck() {
  if (playerIn == myIcons['R']) {
    if (aiInput == myIcons['R']) {
      gameResult = 'T';
    } else if (aiInput == myIcons['P']) {
      gameResult = 'L';
    } else if (aiInput == myIcons['S']) {
      gameResult = 'W';
    }
  } else if (playerIn == myIcons['P']) {
    if (aiInput == myIcons['R']) {
      gameResult = 'W';
    } else if (aiInput == myIcons['P']) {
      gameResult = 'T';
    } else if (aiInput == myIcons['S']) {
      gameResult = 'L';
    }
  } else if (playerIn == myIcons['S']) {
    if (aiInput == myIcons['R']) {
      gameResult = 'L';
    } else if (aiInput == myIcons['P']) {
      gameResult = 'W';
    } else if (aiInput == myIcons['S']) {
      gameResult = 'T';
    }
  }
  return gameResult;
}
