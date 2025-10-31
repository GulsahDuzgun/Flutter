import 'dart:math';
import 'package:flutter/material.dart';

final randomObj = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceWidget();
  }
}

class _RollDiceWidget extends State<RollDice> {
  var nextRollNum = 2;

  void onRollDice() {
    setState(() {
      nextRollNum = randomObj.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-${nextRollNum}.png", width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: onRollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            // padding: EdgeInsets.only(top: 20),
          ),
          child: const Text("Roll Dice", style: TextStyle(fontSize: 20)),
        ),
      ],
    );
  }
}
