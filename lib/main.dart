import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void playSound(int numberSound) {
    final player = AudioCache();
    player.play('note$numberSound.mp3');
  }

  Expanded buildKey({Color color, int numberKey}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(numberKey);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildKey(color: Colors.red, numberKey: 1),
                  buildKey(color: Colors.orange, numberKey: 2),
                  buildKey(color: Colors.yellow, numberKey: 3),
                  buildKey(color: Colors.green, numberKey: 4),
                  buildKey(color: Colors.teal, numberKey: 5),
                  buildKey(color: Colors.blue, numberKey: 6),
                  buildKey(color: Colors.purple, numberKey: 7),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
