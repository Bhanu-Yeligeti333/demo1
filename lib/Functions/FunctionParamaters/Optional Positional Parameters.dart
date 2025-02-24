// ### 3.2 Optional Positional Parameters
//
// ### Easy
//
// - **Exercise 1:**
// Write a function `describeButton` that takes a required String parameter `label` and an optional integer `width`. If `width` is provided, print "Button [label] has width [width]"; otherwise, print "Button [label] has default width." Test both cases.
//
// ### Medium
//
// - **Exercise 2:**
// Create a function `setPadding` that accepts one required parameter `padding` (double) and one optional parameter `unit` (String). If `unit` is omitted, default to "px". Return a string combining the value and unit (e.g., "10px"). Test the function with and without the unit.
//
// ### Hard
//
// - **Exercise 3:**
// Write a function `buildContainer` that takes a required parameter for the container's color (String) and two optional parameters for width and height (both doubles). The function should return a descriptive string for the container. Test all variations (with both, one, or neither optional parameter).
import 'package:flutter/material.dart';

class Optional extends StatefulWidget {
  const Optional({super.key});

  @override
  State<Optional> createState() => _OptionalState();
}

class _OptionalState extends State<Optional> {
  String describeButton(String label, [int? width]) {
    if (width != null) {
      return "Button [$label] has width [$width]";
    } else {
      return "Button [$label] has default width.";
    }
  }

  // Medium: Function to set padding with an optional unit
  String setPadding(double padding, [String unit = "px"]) {
    return "$padding$unit";
  }

  // Hard: Function to describe a container
  String buildContainer(String color, [double? width, double? height]) {
    if (width != null && height != null) {
      return "Container color: [$color], width: [$width], height: [$height]";
    } else if (width != null) {
      return "Container color: [$color], width: [$width]";
    } else if (height != null) {
      return "Container color: [$color], height: [$height]";
    } else {
      return "Container color: [$color] with default size.";
    }
  }
  @override
  Widget build(BuildContext context) {
    String button1 = describeButton("Submit", 150);
    String button2 = describeButton("Cancel");

    String padding1 = setPadding(10);
    String padding2 = setPadding(20, "em");

    String container1 = buildContainer("Red", 200, 300);
    String container2 = buildContainer("Blue", 250);
    String container3 = buildContainer("Green", null, 400);
    String container4 = buildContainer("Yellow");

    return Scaffold(
      body: Column(
        children: [
          Text(button1),
          Text(button2),
          SizedBox(height: 10),
          Text(padding1),
          Text(padding2),
          SizedBox(height: 10),
          Text(container1),
          Text(container2),
          Text(container3),
          Text(container4),

        ],
      ),
    );
  }
}
