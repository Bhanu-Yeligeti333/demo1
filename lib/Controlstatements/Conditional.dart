// ## 1. Conditional Statements
//
// ### 1.1 If‑Else Statements
//
// ### Easy
//
// - **Exercise 1:**
//
// Write a simple function called `checkLogin` that declares a boolean variable `isLoggedIn`. Use an if‑else statement to print “User is logged in” if true, and “User is not logged in” if false.
//
// *Hint:* This mimics deciding which screen to show in a Flutter app.
//
//
// ### Medium
//
// - **Exercise 2:**
//
// Create a function `displayScreen` that accepts a boolean parameter `isLoggedIn`. If `isLoggedIn` is true, return the string “HomeScreen”; otherwise, return “LoginScreen”. Call the function from `main()` and print the result.
//
// *Hint:* Think about how you would choose which widget to display based on authentication.
//
//
// ### Hard
//
// - **Exercise 3:**
//
// Write a function `fetchDataStatus` that takes a string parameter `status` (which can be “loading”, “success”, or “failure”). Use an if‑else ladder to return an appropriate message (e.g., “Show spinner”, “Display data”, “Show error message”). In `main()`, test your function with each possible status.
//
// *Hint:* Consider how this logic could be used in a Flutter app’s state management.
import 'package:flutter/material.dart';

class Conditional extends StatefulWidget {
  const Conditional({super.key});

  @override
  State<Conditional> createState() => _ConditionalState();
}

class _ConditionalState extends State<Conditional> {
  int a=9;
  String str="";
  void checkLogin() {
    bool isLoggedIn = true;

    if (isLoggedIn) {
      str="User is logged in";
    } else {
      str="User is not logged in";
    }
  }
  numerics(int a,int b,int c)
  {

    if(a>b&&a>c)
      {
        return "a is greater";
      }
     else if(b>a&&b>c){
      return " b is greater";
    }
     else{
       return 'c is greater';
    }
  }
isloggined( connectionStatus)
{

    if (connectionStatus == 'success') {
      return ('Display data widget');

    } else if (connectionStatus == 'failure') {
      return ('Display error widget');

    } else {
      return ('Display loading spinner widget');

    }

}
isdisplayedscreen(bool isLoggedIn)
{
  if (isLoggedIn) {
    return "HomeScreen";
  } else {
    return "LoginScreen";
  }
}

  @override
  Widget build(BuildContext context) {
    checkLogin();
    String str4=isdisplayedscreen(false);
    String str3=isloggined('failure');
    String str2=numerics(6,90,14);
    return Scaffold(
       body: Column(
         children: [
          Text('$a'),
           Text(str),
           Text("greatest a=6,b=90,c=14,among three numbers:{$str2}"),
           Text(str3),
           Text(str4),




         ],

       ),
    );
  }
}
