// ### Easy
//
// - **Exercise 1:**
// Write a function `displayWidgetInfo` that takes a widget name (String) and its version (int) and prints "Widget: [name], Version: [version]". Call the function with sample data.
//
// ### Medium
//
// - **Exercise 2:**
// Create a function `sumDimensions` that accepts two integers representing width and height. Return their sum. Call the function with two numbers and print the result.
//
// ### Hard
//
// - **Exercise 3:**
// Write a function `buildProfile` that takes two parameters—`name` (String) and `age` (int)—and returns a formatted string "Profile: [name] is [age] years old". Use this function in a simulated widget builder scenario by printing the output.

import 'package:flutter/material.dart';

class Required extends StatefulWidget {
  const Required({super.key});

  @override
  State<Required> createState() => _RequiredState();
}

class _RequiredState extends State<Required> {
  String displayWidgetInfo(String name, int version) {
    return "Widget: $name, Version: $version";
  }

  // Medium: Function to sum dimensions
  int sumDimensions(int width, int height) {
    return width + height;
  }

  // Hard: Function to build a profile
  String buildProfile(String name, int age) {
    return "Profile: $name is $age years old";
  }

  @override
  Widget build(BuildContext context) {
    String widgetInfo = displayWidgetInfo("Button", 2);
    int dimensionSum = sumDimensions(150, 200);
    String profile = buildProfile("Alice", 25);
    return Scaffold(
      body: Column(
        children: [
          Text("Easy: $widgetInfo"),
          SizedBox(height: 10),
          Text("Medium: Sum of ddimensions = $dimensionSum"),
          SizedBox(height: 10),
          Text("Hard: $profile"),

        ],
      ),
    );
  }
}
