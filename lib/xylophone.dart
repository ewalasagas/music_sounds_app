import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int v) {
    final player = AudioCache();
    player.play('note$v.wav');
  }

  Expanded buildKey(int k, Color a) {
    return Expanded(
      child: FlatButton(
        color: a,
        onPressed: ()  {
          playSound(k);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.teal),
              buildKey(5, Colors.blue),
              buildKey(6, Colors.green),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
