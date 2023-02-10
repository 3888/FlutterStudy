import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final player = AudioPlayer();

Future<void> playSoundByNumber(int soundNumber) async {
  await player.stop();
  await player.play(AssetSource('note$soundNumber'));
}

ButtonStyle raisedButtonStyle(Color background) => ElevatedButton.styleFrom(
      foregroundColor: Colors.grey[300],
      backgroundColor: background,
      minimumSize: const Size.fromHeight(50),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );

Expanded fullScreenButton(Color background, int soundNumber) => Expanded(
  child: ElevatedButton(
      onPressed: () {
        playSoundByNumber(soundNumber);
      },
      child: null,
      style: raisedButtonStyle(background)),
);

xylophoneApp() => MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('Xylophone'),
          backgroundColor: Colors.red[100],
        ),
        body: SafeArea(
          child: Column(
            children: [
              fullScreenButton(Colors.red, 1),
              fullScreenButton(Colors.orange, 2),
              fullScreenButton(Colors.yellow, 3),
              fullScreenButton(Colors.green, 4),
              fullScreenButton(Colors.blue, 5),
              fullScreenButton(Colors.indigo, 6),
              fullScreenButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
