import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //named parameters can be optional like key but position properties can not be pass emty
  const StyledText(this.text, {super.key});
  //with this.text optinal paramater takes and assign to same class property
  // const StyledText(String printedString, {super.key}) : text = printedString;
  const StyledText.textHi(String sendedText, {super.key}) : text = "Hi There";

  final String text; //Assign one time at runtime

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
