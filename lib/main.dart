import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white60,
          title: const Text(
            'XYLOPHONE',
            style: TextStyle(color: Colors.yellowAccent),
          ),
        ),
        body: SafeArea(
          child: TextButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource('note1.wav'));
            },
            child: const Text('click me'),
          ),
        ),
      ),
    ),
  );
}
