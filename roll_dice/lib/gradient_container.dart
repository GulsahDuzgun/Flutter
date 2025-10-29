import 'package:flutter/material.dart';

import 'package:roll_dice/styled_text.dart';

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
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: StyledText()),
    );
  }
}
