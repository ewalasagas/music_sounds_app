import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'piano.dart';
import 'xylophone.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/piano': (context) => PianoApp(),
        '/xylophone': (context) => XylophoneApp(),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Music Sounds',
              style: GoogleFonts.lobster(
                textStyle: TextStyle (
                  fontSize: 50.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
            ),
            IconButton(
              icon: Image.asset('images/piano.png'),
              iconSize: 210,
              onPressed: () {
              Navigator.pushNamed(context, '/piano');
                },
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
            ),
            IconButton(
              icon: Image.asset('images/xylophone.png'),
              iconSize: 200,
              onPressed: () {
                Navigator.pushNamed(context, '/xylophone');
              },
            ),
          ],
        ),
      ),
    );
  }
}
