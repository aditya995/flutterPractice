import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Playing form files !! ***************
  final audioFilesList = [
    'SoundHelix-Song-01.mp3',
    'SoundHelix-Song-02.mp3',
    for (var i = 1; i <= 7; i++) 'note$i.wav',
  ];
  // First create instance of audiocache for playing local audio files
  final AudioCache player = AudioCache(prefix: 'audio/');
  playAudio(int n) {
    // play local files
    player.play(audioFilesList[n]);
    print(audioFilesList[n]);
  }

  // Playing form the Network !! ***************
  final audioUrlList = [
    for (var i = 1; i <= 9; i++)
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-$i.mp3',
  ];
  // First create instance of AudioPlayer for playing Network audio files
  List networkPlayers = [
    for (var i = 0; i < 9; i++) AudioPlayer(),
  ];
  // final AudioPlayer networkPlayer = AudioPlayer();
  var playState = [for (var i = 0; i < 9; i++) PlayerState.STOPPED];
  var launched = [for (var i = 0; i < 9; i++) false];

  playAudioURL(int n) async {
    // play network files
    await networkPlayers[n].play(audioUrlList[n]);
  }

  pauseAudioURL(int n) {
    setState(() {
      playState[n] = PlayerState.PAUSED;
    });
    networkPlayers[n].pause();
  }

  stopAudioURL(int n) {
    setState(() {
      playState[n] = PlayerState.STOPPED;
    });
    networkPlayers[n].stop();
  }

  resumeAudioURL(int n) {
    setState(() {
      playState[n] = PlayerState.PLAYING;
    });
    networkPlayers[n].resume();
  }

  currentState(int n) {
    networkPlayers[n].onPlayerStateChanged.listen((PlayerState s) {
      print('Current player state: $s');
      setState(() => playState[n] = s);
    });
  }

  @override
  void initState() {
    super.initState();
    // Preloading before running Build Function !!
    player.loadAll([...audioFilesList]);
    // Playing all files first time when we run build mathod!
    // for (var i = 0; i < 8; i++) playAudio(i);
    // for (var i = 0; i < 2; i++) playAudioURL(i);
  }

  @override
  void dispose() {
    print('object dispose!');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              for (var i = 0; i < 9; i++)
                SizedBox(
                  height: 25,
                  child: TextButton(
                    onPressed: () {
                      playAudio(i);
                    },
                    child: Text('from local file Key $i'),
                  ),
                ),
              for (var i = 0; i < 9; i++)
                SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                            'from Url $i \nplayState: ${playState[i].index}'),
                      ),
                      (!launched[i])
                          ? TextButton(
                              onPressed: () {
                                setState(() {
                                  launched[i] = true;
                                });
                                playAudioURL(i);
                                currentState(i);
                              },
                              child: Text('Play'),
                            )
                          : (playState[i] == PlayerState.PLAYING)
                              ? TextButton(
                                  onPressed: () {
                                    pauseAudioURL(i);
                                    currentState(i);
                                  },
                                  child: Text('Pause'),
                                )
                              : TextButton(
                                  onPressed: () {
                                    resumeAudioURL(i);
                                    currentState(i);
                                  },
                                  child: Text('Resume'),
                                ),
                      TextButton(
                        onPressed: () {
                          stopAudioURL(i);
                          currentState(i);
                        },
                        child: Text('stop'),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
