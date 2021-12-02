import 'package:flutter/material.dart';

var currentKey = '';
List inputFields = [];
List saved = [];
List timesOf_saved = [];

// Caps Lock Variables

var cap = false;
var capTemp = false;
var capPressedNTimes = 0;
var checkLock = false;
/*

// DateTime _now = DateTime.now();
// DateTime.now().minute;
// print('timestamp: ${_now.hour}:${_now.minute}:${_now.second}.${_now.millisecond}');

// TODO::Textbutton style on click

*/

// Key variables
var keyHeight = 55.0;

// Font and icon settings
var iconSize = 17.0;
var keyfontSize = 22.0;
var emojiSize = 18.0;
var inputFieldFontSize = 22.5;
var displayFieldFontSize = 24.0;

// Converting to String form list of string
String inputStr(List a) {
  var str = '';
  a.forEach((element) {
    str += element;
  });
  return str;
}

var keysList1 = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];
var keysList1Cap = [
  '!',
  '@',
  '#',
  '\$',
  '%',
  '^',
  '&',
  '*',
  '(',
  ')',
];
var keysList2 = [
  'q',
  'w',
  'e',
  'r',
  't',
  'y',
  'u',
  'i',
  'o',
  'p',
];
var keysList2Cap = [
  'Q',
  'W',
  'E',
  'R',
  'T',
  'Y',
  'U',
  'I',
  'O',
  'P',
];
var keysList3 = [
  'a',
  's',
  'd',
  'f',
  'g',
  'h',
  'j',
  'k',
  'l',
];
var keysList3Cap = [
  'A',
  'S',
  'D',
  'F',
  'G',
  'H',
  'J',
  'K',
  'L',
];
var keysList4 = [
  'CapsOff',
  'z',
  'x',
  'c',
  'v',
  'b',
  'n',
  'm',
  'delete',
];
var keysList4Cap = [
  'CapsOn',
  'Z',
  'X',
  'C',
  'V',
  'B',
  'N',
  'M',
  'DELETE',
];
var keysList5 = ['😁', '😄', '😆', '😎', 'space', '😍', '😵', 'enter'];
var keysList5Cap = ['😱', '😭', '😒', '🙁', 'SPACE', '🙄', '😑', 'Enter'];
