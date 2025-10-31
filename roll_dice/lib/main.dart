import 'package:flutter/material.dart';

import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: MyCustomWidget(
          Color.fromARGB(255, 25, 245, 34),
          Color.fromARGB(255, 53, 42, 120),
        ),
      ),
    ),
  );
}
