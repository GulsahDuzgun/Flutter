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
  const MyCustomWidget(this.color_1, this.color_2, {super.key});

  final Color color_1, color_2;

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
      child: Center(child: Image.asset("assets/images/dice-1.png", width: 200)),
    );
  }
}
