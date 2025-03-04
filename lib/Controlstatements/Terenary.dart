import 'package:flutter/material.dart';

class Terenary extends StatefulWidget {
  const Terenary({super.key});

  @override
  State<Terenary> createState() => _TerenaryState();
}

class _TerenaryState extends State<Terenary> {
  getGreeting(isMorning){

    return isMorning? 'Good Morning': 'Good Evening';
  }
  themeColor(isDarkMode)
  {
    return isDarkMode? 'Dark Mode': 'Light Mode';
  }
  displayMessage(int score) {
   return score >= 50 ? "Pass" : "Fail";

  }
  @override
  Widget build(BuildContext context) {
    String str= getGreeting(true);
    String str1=themeColor(true);
    String message=  displayMessage(23);
    return Scaffold(
      body: Column(
        children: [
          Text(str),
          Text(str1),
          Text(message)

        ]
      ),
    );
  }
}
