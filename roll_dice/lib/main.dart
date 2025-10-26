import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 25, 345, 34),
                Color.fromARGB(255, 53, 42, 120),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Hello World!',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
        ),
      ),
    ),
  );
}
