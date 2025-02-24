// ### Easy
//
// - **Exercise 1:**
// Write a recursive function `countdown` that takes an integer and prints the numbers from that integer down to 1.
//
// ### Medium
//
// - **Exercise 2:**
// Create a recursive function `fibonacci` that returns the nth Fibonacci number. Test the function for n = 6 and print the result.
//
// ### Hard
//
// - **Exercise 3:**
// Write a recursive function `traverseNestedList` that takes a nested list (e.g., `[1, [2, 3], [4, [5, 6]]]`) and prints all the numbers.*Hint:* Use recursion to flatten the list and then print the numbers.*Application:* This could simulate traversing nested widget data structures.
import 'package:flutter/material.dart';

class Recursion extends StatefulWidget {
  const Recursion({super.key});

  @override
  State<Recursion> createState() => _RecursionState();
}

class _RecursionState extends State<Recursion> {

  List<String> results = [];

  @override
  void initState() {
    super.initState();

    // Task 1: Countdown from a number to 1
    String countdown(int n) {
      if (n < 1) return ""; // Stop when n < 1
      return "$n " + countdown(n - 1);
    }

    results.add("Task 1: Countdown(5) → ${countdown(5)}");

    // Task 2: Find the nth Fibonacci number
    int fibonacci(int n) {
      if (n <= 1) return n; // Base cases
      return fibonacci(n - 1) + fibonacci(n - 2);
    }

    results.add("Task 2: Fibonacci(6) → ${fibonacci(6)}");

    // Task 3: Flatten a nested list
    void flattenList(dynamic list, List<int> flatList) {
      for (var item in list) {
        if (item is List) {
          flattenList(item, flatList); // If it's a list, call function again
        } else {
          flatList.add(item); // If it's a number, add it to the result
        }
      }
    }

    List<int> flatList = [];
    List<dynamic> nestedList = [1, [2, 3], [4, [5, 6]]];
    flattenList(nestedList, flatList);

    results.add("Task 3: Flattened List → $flatList");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: results.map((result) => Text(result, textAlign: TextAlign.center)).toList(),
        ),
      ),


    );
  }
}
