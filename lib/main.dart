// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final audioCache = AudioCache();

  void playSound(String soundFile) {
    audioCache.play(soundFile);
  }

  Widget buildButton(String noteName, Color colorName) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          playSound(noteName);
        },
        color: colorName,
        child: Icon(Icons.music_note),
        enableFeedback: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone Application',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildButton('note1.wav', Colors.red),
            buildButton('note2.wav', Colors.orange),
            buildButton('note3.wav', Colors.yellow),
            buildButton('note4.wav', Colors.green),
            buildButton('note5.wav', Colors.grey),
            buildButton('note6.wav', Colors.blue),
            buildButton('note7.wav', Colors.purple),
          ]),
        ),
      ),
    );
  }
}
