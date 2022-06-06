import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red.shade900,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        elevation: 2,
        title: const Text(
          "DICCE",
        ),
        centerTitle: true,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
                onPressed: () {
                  // ignore: avoid_print
                  rollDice();
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                ),
                onPressed: () {
                  rollDice();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
