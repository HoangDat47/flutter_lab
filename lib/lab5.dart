import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Lab5 extends StatelessWidget {
  const Lab5({super.key});

  void playSound(String soundFile) {
    final player = AudioPlayer();
    player.play(AssetSource(soundFile));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xylophone'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('images/audio/a3.mp3');
                },
                child: Container(
                  height: 100.0,
                  width: double.infinity,
                  color: Colors.red,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('images/audio/a4.mp3');
                },
                child: Container(
                  height: 100.0,
                  width: double.infinity,
                  color: Colors.orange,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('images/audio/a5.mp3');
                },
                child: Container(
                  height: 100.0,
                  width: double.infinity,
                  color: Colors.yellow,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('b3.mp3');
                },
                child: Container(
                  height: 100.0,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('images/audio/b4.mp3');
                },
                child: Container(
                  height: 100.0,
                  width: double.infinity,
                  color: Colors.blue,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('images/audio/b5.mp3');
                },
                child: Container(
                  height: 100.0,
                  width: double.infinity,
                  color: Colors.indigo,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('images/audio/c3.mp3');
                },
                child: Container(
                  height: 100.0,
                  width: double.infinity,
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
