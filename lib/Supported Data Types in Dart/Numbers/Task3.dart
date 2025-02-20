// 1. **Circle Area Calculator**
// 1. *Task*
// 1. Write a function that calculates the area of a circle given its radius.
// 2. *Requirements:*
// - Declare the radius as a double (simulate a widget’s dimension).
// - Use a const for Pi.
// - Return or print the area with proper rounding.*Bonus:* Integrate this function into a simple Flutter widget that displays the area.






import 'package:flutter/material.dart';

class num_1 extends StatefulWidget {
  const num_1({super.key});

  @override
  State<num_1> createState() => _num_1State();
}

class _num_1State extends State<num_1> {
  double ?num=0;
  void AreaOfCircle(int r)
  {
    num=3.14*r*r;
  }
  @override
  Widget build(BuildContext context) {
    AreaOfCircle(6);
    return Scaffold(
      body: Column(
        children: [
          Text('$num'),

        ],
      ),
    );
  }
}
