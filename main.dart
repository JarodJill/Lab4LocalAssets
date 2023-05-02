import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text('Twin Dice Game'),
      backgroundColor: Colors.amber,
    ),
    body: DiceGame(),
  )));
}

class DiceGame extends StatefulWidget {
  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int leftdice = 1;
  int rightdice = 2;

  rolldices() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: MaterialButton(
                onPressed: () {
                  rolldices();
                },
                child: Image.asset('images/$leftdice.png')),
          ),
          Expanded(
            child: MaterialButton(
                onPressed: () {
                  rolldices();
                },
                child: Image.asset('images/$rightdice.png')),
          ),
          MaterialButton(
            onPressed: () {
              rolldices();
            },
            color: Colors.amber,
            textColor: Colors.white,
            child: const Text('Roll Both'),
          ),
        ],
      ),
    );
  }
}
