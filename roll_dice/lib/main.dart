import 'package:flutter/material.dart';

import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: MyCustomWidget(
          const Color.fromARGB(255, 25, 245, 34),
          const Color.fromARGB(255, 53, 42, 120),
        ),
      ),
    ),
  );
}
