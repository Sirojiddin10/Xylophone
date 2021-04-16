import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded playAudio(var noteNum, var color) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          final playAudio = AudioCache();
          playAudio.play('note$noteNum.wav');
        },
        child: null,
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playAudio(1, Colors.red),
              playAudio(2, Colors.orange),
              playAudio(3, Colors.yellow),
              playAudio(4, Colors.green),
              playAudio(5, Colors.teal),
              playAudio(6, Colors.blue),
              playAudio(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
