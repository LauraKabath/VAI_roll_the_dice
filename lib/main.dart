import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

void main() {
  runApp(MaterialApp(home: Scaffold(body: Dice())));
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int side = 1;

  void roll() {
    setState(() {
      side = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/dice-$side.png'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: roll,
            child: Text(
              "Roll",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
