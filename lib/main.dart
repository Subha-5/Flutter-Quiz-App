import 'package:flutter/material.dart';

import 'package:adv_project/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 165, 82, 255),
              Color.fromARGB(255, 71, 0, 185),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: const StartScreen(),
      ),
    ),
  ));
}
