import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class PianoApp extends StatelessWidget {

  void playSound(int v) {
    final player = AudioCache();
    player.play('piano$v.wav');
  }

  Expanded buildPiano(int k, Color a) {
    return Expanded(
      child: FlatButton(
        color: a,
        onPressed: ()  {
          playSound(k);
        },
        shape: RoundedRectangleBorder(side: BorderSide(
            color: Colors.black,
            width: 0.5,
            style: BorderStyle.solid
        ),
        ),
      ),
    );
  }

  Container blackKeys() {
    return Container(
      alignment: Alignment.bottomLeft,
      width: 200.0,
      height: 40.0,
      color: Colors.black,
    );
  }

  Container noKey() {
    return Container(
      alignment: Alignment.bottomLeft,
      width: 200.0,
      height: 40.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    buildPiano(1, Colors.white),
                    buildPiano(2, Colors.white),
                    buildPiano(3, Colors.white),
                    buildPiano(4, Colors.white),
                    buildPiano(5, Colors.white),
                    buildPiano(6, Colors.white),
                    buildPiano(7, Colors.white),
                  ]
              ),
              Positioned(
                  left: 300,
                  right: 0.0,
                  bottom: 100,
                  top: 0.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(width: 200),
                      blackKeys(),
                      blackKeys(),
                      noKey(),
                      blackKeys(),
                      blackKeys(),
                      blackKeys(),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}



