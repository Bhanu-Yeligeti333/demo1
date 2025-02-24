// ### Easy
//
// - **Exercise 1:**
// Write a function `operate` that accepts two integers and a function (with signature `int Function(int, int)`) as parameters. Use it to perform addition and subtraction by passing appropriate functions.
//
// ### Medium
//
// - **Exercise 2:**
// Create a higher‑order function `applyTwice` that accepts a function and an integer. It should apply the function to the integer two times (e.g., `f(f(x))`) and return the result. Test with a function that adds 5 to a number.
//
// ### Hard
//
// - **Exercise 3:**
// Write a function `filterAndTransform` that accepts a list of integers and two functions: one for filtering (a predicate) and one for transforming an integer. Apply the predicate to filter the list and then transform each remaining element. Return the new list and print it.*Hint:* This mimics processing a list of data (like filtering widget IDs) before using them in a UI.
import 'package:flutter/material.dart';

class Higher extends StatefulWidget {
  const Higher({super.key});

  @override
  State<Higher> createState() => _HigherState();
}

class _HigherState extends State<Higher> {

  String task1Result = "";
  String task2Result = "";
  String task3Result = "";

  @override
  void initState() {
    super.initState();

    // **Task 1: Easy** - Local function inside another function
    void outerMessage() {
      void innerMessage() {
        task1Result = "Task 1: Inner Message";
      }

      innerMessage();
    }

    outerMessage();


    String buildDashboard() {
      String board(String section) => "Section: $section\n";

      return board("ONE") + board("TWO") + board("THREE") + board("FOUR") + board("FIVE");
    }

    task2Result = "Task 2: \n${buildDashboard()}";

    // **Task 3: Hard** - Function modifying a configuration map
    Map<String, dynamic> configManager() {
      var config = {'theme': 'light', 'fontSize': 14, 'isDarkMode': true};

      void updateSetting(String key, dynamic value) {
        config[key] = value; // Updates the config map
      }

      updateSetting('theme', 'dark');
      updateSetting('fontSize', 16);
      updateSetting('isDarkMode', false);
      updateSetting('language', 'en');

      return config;
    }

    task3Result = "Task 3: Config Settings → ${configManager()}";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Local Functions Demo")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(task1Result, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text(task2Result, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text(task3Result, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),

    );
  }
}
