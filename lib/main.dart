import 'dart:developer';

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
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SafeArea(
          child: TextButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player
                  .play(AssetSource('music.mpeg'))
                  .then((value) => log("Hello World"));
            },
            child: const Text('click me'),
          ),
        ),
      ),
    ),
  );
}
