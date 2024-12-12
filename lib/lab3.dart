import 'dart:math';

import 'package:flutter/material.dart';

class Lab3 extends StatefulWidget {
  const Lab3({super.key});

  @override
  State<Lab3> createState() => _Lab3State();
}

class _Lab3State extends State<Lab3> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void dicee() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    minimumSize: const Size(88, 36),
    backgroundColor: Colors.grey,
    padding: const EdgeInsets.all(0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicee'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextButton(
                      style: flatButtonStyle,
                      onPressed: dicee,
                      child: Image.asset('images/dice/dice$leftDiceNumber.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextButton(
                      style: flatButtonStyle,
                      onPressed: dicee,
                      child: Image.asset('images/dice/dice$rightDiceNumber.png'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}