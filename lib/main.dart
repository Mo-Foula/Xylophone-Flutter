import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playnow(int a) {
    player.play("note$a.wav");
  }
  Expanded buildkeynow(Color a , int b){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playnow(b);
        },
        color: a,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildkeynow( Colors.red, 1),
              buildkeynow( Colors.orange, 2),
              buildkeynow( Colors.yellow, 3),
                buildkeynow( Colors.green, 4),
                buildkeynow( Colors.teal, 5),
                buildkeynow( Colors.blue, 6),
                buildkeynow(Colors.purple.shade600 , 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
red
orange
yellow
green
dark green
blue
violet
 */
