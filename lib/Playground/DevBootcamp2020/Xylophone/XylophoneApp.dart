import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final player = AudioPlayer();

Future<void> setSource(Source source) async {
  await player.stop();
  await player.play(source);
}

ButtonStyle raisedButtonStyle(Color background) => ElevatedButton.styleFrom(
      foregroundColor: Colors.grey[300],
      backgroundColor: background,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );

xylophoneApp() => MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.red[100],
        ),
        body: SafeArea(
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  setSource(AssetSource('note1.wav'));
                },
                child: null,
                style: raisedButtonStyle(Colors.red)),
          ),
        ),
      ),
    );
