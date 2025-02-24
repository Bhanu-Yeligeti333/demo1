// ### Easy
//
// - **Exercise 1:**
// Write an anonymous function and pass it to the `forEach` method of a list containing numbers `[1, 2, 3, 4]` that prints each number multiplied by 2.
//
// ### Medium
//
// - **Exercise 2:**
// Declare a list of strings representing widget names. Use an anonymous function with the `map` method to convert each name to uppercase, then print the resulting list.
//
// ### Hard
//
// - **Exercise 3:**
// Create a Flutter-inspired scenario:
// Assume you have a list of integers representing widget IDs. Use an anonymous function with `where` to filter out IDs that are even, then print the list of odd IDs.
import 'package:flutter/material.dart';

class Lambdas extends StatefulWidget {
  const Lambdas({super.key});

  @override
  State<Lambdas> createState() => _LambdasState();
}

class _LambdasState extends State<Lambdas> {
  List<String> results = [];

  @override
  void initState() {
    super.initState();

    // **Exercise 1: Using anonymous function with forEach**
    List<int> numbers = [1, 2, 3, 4];
    List<int> doubledNumbers = [];
    numbers.forEach((num) => doubledNumbers.add(num * 2));
    results.add("Task 1: Numbers doubled\nResult: $doubledNumbers");

    // **Exercise 2: Using anonymous function with map**
    List<String> widgets = ["button", "slider", "checkbox"];
    List<String> upperWidgets = widgets.map((widget) => widget.toUpperCase()).toList();
    results.add("Task 2: Widget names in uppercase\nResult: $upperWidgets");

    // **Exercise 3: Using anonymous function with where**
    List<int> widgetIds = [101, 102, 103, 104, 105];
    List<int> oddWidgetIds = widgetIds.where((id) => id.isOdd).toList();
    results.add("Task 3: Odd Widget IDs\nResult: $oddWidgetIds");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: results
              .map((result) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              result,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ))
              .toList(),
        ),
      ),
    );
  }
}
