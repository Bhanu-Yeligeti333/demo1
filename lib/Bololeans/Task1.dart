/*//1. **Login Status Check***Task:*
// Declare a boolean variable (e.g.,`isLoggedIn`) and use an`if`statement to print “User is logged in”
if true or “User is logged out” if false.*/

import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  @override
  Widget build(BuildContext context) {
    String name;
    bool Loggedin=false;
    if(Loggedin == true)
    {
      name="User is Loggedin";
    }
    else
      name="User is Logged Out";
    return Scaffold(
      body: Column(
        children: [
          Text('$name'),
        ],
      ),

    );
  }
}
