// ### Easy
//
// - **Exercise 1:**
// Write a function named `square` that takes an integer parameter and returns its square. Call this function with the number 5 and print the result.
//
// ### Medium
//
// - **Exercise 2:**
// Create a function called `calculateArea` that accepts two double parameters (width and height) and returns their product. In `main()`, calculate the area of a widget given width 100.0 and height 50.0 and print the result.
//
// ### Hard
//
// - **Exercise 3:**
// Write a function `formatPrice` that takes a double value and returns a string formatted as "Price: \$<value>" where `<value>` is rounded to two decimal places. Test this function with a price of 49.995.

import 'package:flutter/material.dart';

class Return extends StatefulWidget {
  const Return({super.key});

  @override
  State<Return> createState() => _ReturnState();
}

class _ReturnState extends State<Return> {
  int square(int number) {
    return number * number;
  }

  // Medium: Function to calculate the area
  double calculateArea(double width, double height) {
    return width * height;
  }

  // Hard: Function to format the price
  String formatPrice(double price) {
    return "Price: \$${price.toStringAsFixed(2)}";
  }
  @override
  Widget build(BuildContext context) {
    String formattedPrice = formatPrice(49.995);
    int squareResult = square(5);
    double areaResult = calculateArea(100.0, 50.0);
    return Scaffold(
      body: Column(
        children: [
          Text("Easy: Square of 5 = $squareResult"),
          SizedBox(height: 10),
          Text("Medium: Area of 100x50 = $areaResult"),
          SizedBox(height: 10),
          Text("Hard: $formattedPrice"),

        ],
      ),
    );
  }
}
