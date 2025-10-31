import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceWidget();
  }
}

class _RollDiceWidget extends State<RollDice> {
  var currentDiceImage = "assets/images/dice-1.png";

  void onRollDice() {
    setState(() {
      currentDiceImage = "assets/images/dice-2.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(currentDiceImage, width: 200),
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
