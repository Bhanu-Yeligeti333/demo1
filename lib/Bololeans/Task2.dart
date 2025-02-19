import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    String name;
    bool DarkMode=true;
    if(DarkMode == true)
    {
      name=" Light Mode";
    }
    else
      name=" DArk Mode";
    return Scaffold(
      body: Column(
        children: [
          Text('$name'),

        ],
      ),

    );
  }
}
