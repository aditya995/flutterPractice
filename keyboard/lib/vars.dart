import 'package:flutter/material.dart';

var currentKey = '';
List inputFields = [];
var cap = true;
List saved = [];
List timesOf_saved = [];
// DateTime _now = DateTime.now();
// DateTime.now().minute;
// print('timestamp: ${_now.hour}:${_now.minute}:${_now.second}.${_now.millisecond}');

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
var keysList3 = ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'enter'];
var keysList3Cap = ['A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'ENTER'];
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
var keysList5 = ['😁', '😄', '😆', '😎', 'space', '😍', '😵', '🥴', '😡'];
var keysList5Cap = ['😱', '😭', '😒', '🙁', 'SPACE', '🙄', '😑', '😐', '🙂'];
