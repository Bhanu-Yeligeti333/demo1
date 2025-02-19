// 2. **Multiple Conditions***Task:*
// Write a function that accepts two booleans (e.g.,`isLoggedIn`and`hasPremiumAccess`) and
// prints an appropriate message based on the combination using logical operators.
//Conditional Widget TextTask: Write a function that accepts a boolean (e.g., isDarkMode) and returns a string “Dark Mode” if true or “Light Mode” if false. Then, display this string in a Flutter Text widget.
import 'package:flutter/material.dart';

class Median extends StatefulWidget {
  const Median({super.key});

  @override
  State<Median> createState() => _MedianState();
}

class _MedianState extends State<Median> {
  String getModeString(bool isDarkMode) {
    return isDarkMode ? 'Dark Mode' : 'Light Mode';
  }
  String ?a,b,c,d;
  void printMessage(bool isLoggedIn, bool hasPremiumAccess) {
    if (isLoggedIn && hasPremiumAccess) {
      a="Welcome, premium user!";
    } else if (isLoggedIn && !hasPremiumAccess) {
      d="Welcome, standard user!";
    } else if (!isLoggedIn && hasPremiumAccess) {
       c=("You need to log in to access premium features.");
    } else {
       b=("Please log in to access our services.");
    }
  }
  String checkUserVerification(bool isLoggedIn, bool isEmailVerified, bool hasAcceptedTerms) {
    if (isLoggedIn && isEmailVerified && hasAcceptedTerms) {
      return "You have access to premium features.";
    } else if (!isLoggedIn) {
      return "Please log in to access premium features.";
    } else if (!isEmailVerified) {
      return "Please verify your email address to access premium features.";
    } else if (!hasAcceptedTerms) {
      return "Please accept the terms and conditions to access premium features.";
    } else {
      return "You do not have access to premium features.";
    }
  }


  @override
  Widget build(BuildContext context) {
    printMessage(true,false);
    printMessage(true,true);
    printMessage(false,false);
    return Scaffold(
      body: Column(
        children: [
          Text(getModeString(true)),
          Text(getModeString(false)),
          Text(a!),
          Text(b!),
          Text(checkUserVerification(true, true, true)),
          Text(checkUserVerification(false, true, true)),
          Text(checkUserVerification(true, false, true)),


        ],
      ),

    );
  }
}
