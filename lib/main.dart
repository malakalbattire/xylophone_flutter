import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void playSound(int noteNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
  }

  Expanded buildKey({Color? color, int soundNum = 1}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNum);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNum: 1),
              buildKey(color: Colors.orange, soundNum: 2),
              buildKey(color: Colors.yellow, soundNum: 3),
              buildKey(color: Colors.green, soundNum: 4),
              buildKey(color: Colors.teal, soundNum: 5),
              buildKey(color: Colors.blue, soundNum: 6),
              buildKey(color: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
