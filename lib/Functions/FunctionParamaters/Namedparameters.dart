// ### Easy
//
// - **Exercise 1:**
// Write a function `createUser` that accepts named parameters for `username` (required String) and `age` (optional int with default value 18). Print the user details inside the function. Test the function with and without specifying `age`.
//
// ### Medium
//
// - **Exercise 2:**
// Create a function `buildCard` that takes named parameters: `title` (String, required), `subtitle` (String, optional), and `elevation` (double, with a default value of 2.0). Return a formatted string summarizing the card. Test this function with different combinations of arguments.
//
// ### Hard
//
// - **Exercise 3:**
// Write a function `configureTheme` that accepts named parameters for various theme settings (e.g., `primaryColor` (String, required), `fontSize` (double, optional), `isDarkMode` (bool, optional with default false)). The function should return a map with these settings. Simulate its usage in a Flutter app by printing the map.

import 'package:flutter/material.dart';

class Namedparameters extends StatefulWidget {
  const Namedparameters({super.key});

  @override
  State<Namedparameters> createState() => _NamedparametersState();
}

class _NamedparametersState extends State<Namedparameters> {
  List<String> results = [];

  // Exercise 1: createUser function (Easy)
  void createUser({required String username, int age = 18}) {
    results.add("User: $username, Age: $age");
  }

  // Exercise 2: buildCard function (Medium)
  String buildCard({required String title, String? subtitle, double elevation = 2.0}) {
    return "Card:\n  Title: $title\n  Subtitle: ${subtitle ?? 'None'}\n  Elevation: $elevation";
  }

  // Exercise 3: configureTheme function (Hard)
  Map<String, dynamic> configureTheme({required String primaryColor, double? fontSize, bool isDarkMode = false}) {
    return {
      'Primary Color': primaryColor,
      'Font Size': fontSize ?? 'Default',
      'Dark Mode': isDarkMode ? 'Enabled' : 'Disabled',
    };
  }

  @override
  void initState() {
    super.initState();

    // Call functions and store results
    createUser(username: "bhanu Prasad");
    createUser(username: "Amit Kumar", age: 30);

    results.add(buildCard(title: "Floated", subtitle: "It is a button"));
    results.add(buildCard(title: "Elevated", elevation: 5.0));

    results.add(configureTheme(primaryColor: "Blue").toString());
    results.add(configureTheme(primaryColor: "Green", fontSize: 16.0, isDarkMode: true).toString());
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: results.map((result) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(result, textAlign: TextAlign.center),
          )).toList(),
        ),
      ),
    );

  }
}
