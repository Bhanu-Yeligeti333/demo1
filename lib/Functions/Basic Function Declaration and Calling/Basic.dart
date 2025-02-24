// ### Easy
//
// - **Exercise 1:**
//
// Write a simple function called `showWelcome` that prints "Welcome to Flutter!" when called. Then, call the function inside `main()`.
//
// *Hint:* Focus on using the correct syntax for a void function.
//
//
// ### Medium
//
// - **Exercise 2:**
//
// Create a function named `greetUser` that accepts no parameters but returns a greeting string "Hello, Flutter Developer!". In your `main()` function, store the returned greeting in a variable and print it.
//
// *Hint:* Change the return type from `void` to `String`.
//
//
// ### Hard
//
// - **Exercise 3:**
//
// Create a Flutter-inspired function called `buildHeader` that returns a string formatted as an HTML-like header (e.g., `<h1>Welcome to Flutter</h1>`). Then, call the function and print its result.
//
// *Hint:* Although not directly Flutter code, imagine this as a precursor to building dynamic UI text.
//

import 'package:flutter/material.dart';

class Basic extends StatefulWidget {
  const Basic({super.key});

  @override
  State<Basic> createState() => _BasicState();
}

class _BasicState extends State<Basic> {
  String showWelcome() {
    return "Welcome to Fluttereee!";
  }

  String greetUser() {
    return "Hello, Flutter Developer!";
  }
  String buildHeader() {
    return "<h1>Welcome to Flutter</h1>";
  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Column(
        children: [
          Text(showWelcome()),
    Text(greetUser()),
          Text(buildHeader()),
    ],
      ),
    );
  }
}
