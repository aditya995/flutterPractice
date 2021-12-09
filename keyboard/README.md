# keyboard

It's not actually a keyboard. But a simulation of a keyboard. We can write some text even emojis  too. We also can save temporarily what we wrote and can view all the posts we wrote on top of the app! (With time when posted in hour, minutes & seconds)

## Getting Started

- ### Add Dependencies of the package in pubspec.ymal
![In line 36 under dependencies](files/pubspec.yaml.jpg)
- ### Go to the file and change [ ext.kotlin_version = '1.4.32' ]
![Change build.gradle file versions](files/android..build.gradle.PNG)
- ### Go to the file and change [minSdkVersion 19]
![Change build.gradle file versions](files/android..app..build.gradle.PNG)
- ### Import and use => import 'package:audioplayers/audioplayers.dart';
![Import and use](files/importFile.PNG)
 - ### Call this even for multiple audio files
```
AudioCache player = AudioCache(prefix: 'files/');
    player.play('01.wav');
    player.play('02.wav');
```
 - ### files are kept in 
![Import and use](files/filesLocation.PNG)