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
  const MyCustomWidget({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 25, 245, 34),
            Color.fromARGB(255, 53, 42, 120),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: StyledText('Hello World!')),
    );
  }
}
