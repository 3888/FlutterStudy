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
      minimumSize: Size.fromHeight(50),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
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
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      playSoundByNumber(1);
                    },
                    child: null,
                    style: raisedButtonStyle(Colors.red)),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      playSoundByNumber(2);
                    },
                    child: null,
                    style: raisedButtonStyle(Colors.orange)),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      playSoundByNumber(3);
                    },
                    child: null,
                    style: raisedButtonStyle(Colors.yellow)),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      playSoundByNumber(4);
                    },
                    child: null,
                    style: raisedButtonStyle(Colors.green)),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      playSoundByNumber(5);
                    },
                    child: null,
                    style: raisedButtonStyle(Colors.blue)),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      playSoundByNumber(6);
                    },
                    child: null,
                    style: raisedButtonStyle(Colors.indigo)),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      playSoundByNumber(7);
                    },
                    child: null,
                    style: raisedButtonStyle(Colors.purple)),
              ),
            ],
          ),
        ),
      ),
    );
