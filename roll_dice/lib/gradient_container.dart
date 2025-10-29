import 'package:flutter/material.dart';

import 'package:roll_dice/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class MyCustomWidget extends StatelessWidget {
  //super keywords call constructor of parent class
  const MyCustomWidget({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 25, 245, 34),
            Color.fromARGB(255, 53, 42, 120),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: StyledText()),
    );
  }
}
