import 'package:flutter/material.dart';

var currentKey = '';
String inputFields = '';
var cap = true;
List saved = [];
List timesOf_saved = [];
// DateTime _now = DateTime.now();
// DateTime.now().minute;
// print('timestamp: ${_now.hour}:${_now.minute}:${_now.second}.${_now.millisecond}');

var keysList1 = [
  '`',
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '0',
  '-',
  '=',
  'delete'
];
var keysList1Cap = [
  '~',
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
  '_',
  '+',
  'delete'
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
  '[',
  ']',
  '\\'
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
  '{',
  '}',
  '|'
];
var keysList3 = [
  'CapsOff',
  'a',
  's',
  'd',
  'f',
  'g',
  'h',
  'j',
  'k',
  'l',
  ';',
  '\'',
  'enter'
];
var keysList3Cap = [
  'CapsOn',
  'A',
  'S',
  'D',
  'F',
  'G',
  'H',
  'J',
  'K',
  'L',
  ':',
  '"',
  'enter'
];
var keysList4 = ['.', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '/', '.'];
var keysList4Cap = ['.', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', '<', '>', '?', '.'];
var keysList5 = ['space'];
var keysList5Cap = ['space'];
