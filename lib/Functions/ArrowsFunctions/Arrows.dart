// ### Easy
//
// - **Exercise 1:**
// Convert the following function to an arrow function:
// Call the function with the number 7 and print the result.
//
// ```dart
// int doubleValue(int x) {
// return x * 2;
// }
//
// ```
//
//
// ### Medium
//
// - **Exercise 2:**
// Write an arrow function named `concatStrings` that takes two strings and returns their concatenation with a space between them. Test the function with two sample strings.
//
// ### Hard
//
// - **Exercise 3:**
// Create an arrow function called `calculateDiscount` that takes a double `price` and an int `percent` (discount percentage) and returns the discounted price. Test it with price 200.0 and 15% discount.

import 'package:flutter/material.dart';

class Arrows extends StatefulWidget {
  const Arrows({super.key});

  @override
  State<Arrows> createState() => _ArrowsState();
}

class _ArrowsState extends State<Arrows> {

  List<String> results = [];

  // **Easy:** Convert function to arrow function
  int doubleValue(int x) => x * 2;

  // **Medium:** Concatenation function as an arrow function
  String concatStrings(String str1, String str2) => "$str1 $str2";

  // **Hard:** Discount calculation as an arrow function
  double calculateDiscount(double price, int percent) => price - (price * percent / 100);

  @override
  void initState() {
    super.initState();

    // Calling functions and storing results
    results.add("TAsk-1:Double of 7: ${doubleValue(7)}");
    results.add("TASK-2:Concatenated: ${concatStrings("Hello", "World")}");
    results.add("TASK-3:Discounted Price: ${calculateDiscount(200.0, 15)}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: results.map((result) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(result, textAlign: TextAlign.start),
              )).toList(),
            ),
          ),
        ],
      ),

    );
  }
}
