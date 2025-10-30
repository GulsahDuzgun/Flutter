import 'package:flutter/material.dart';

import 'package:roll_dice/styled_text.dart';

//const and final types cannot be reassign, aet once and can not change.
//The difference is  final is determined at runtime but const variables must be known at compile time

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
//var type's variables can be reassing if the initialization type is same
//For example these variables can be reassign different Aligment values
//const == compile time variable, final == set once runtime, var == can change

class MyCustomWidget extends StatelessWidget {
  //super keywords call constructor of parent class
  // const MyCustomWidget({super.key});
  MyCustomWidget(this.color_1, this.color_2, {super.key});

  final Color color_1, color_2;
  var currentDiceImage = "assets/images/dice-1.png";

  void onRollDice() {
    currentDiceImage = "assets/images/dice-2.png";
    print("Dice Rolled!");
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color_1, color_2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      // child: Center(child: StyledText.textHi("sendedText")),
      child: Center(
        child: Column(
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
        ),
      ),
    );
  }
}
