

//
// ### Easy
//
// 1. **Simple Boolean Logic***Task:* Write a program that demonstrates the use of logical AND, OR, and NOT with two boolean variables.
//
// ### Medium
//
// 1. **User Login Checker***Task:* Write a function that accepts two booleans (e.g., `isLoggedIn` and `isEmailVerified`) and returns “Access Granted” only if both are true. Otherwise, return “Access Denied.”
//
// ### Hard
//
// 1. **Composite User Settings***Task:* Write a Dart function that simulates checking multiple user settings for a Flutter app (e.g., `isLoggedIn`, `hasAcceptedTerms`, and `isPremiumUser`) using a combination of logical operators. Return a composite status message indicating which conditions are met or missing.
//




















import 'package:flutter/material.dart';

class Logical extends StatefulWidget {
  const Logical({super.key});

  @override
  State<Logical> createState() => _LogicalState();
}

class _LogicalState extends State<Logical> {
  bool value1 = true;
  bool value2 = false;
  String? message;
  String? status;

  @override
  Widget build(BuildContext context) {
    bool loggedIn = true;
    bool premium = false;
    bool emailVerified = true;

    if (loggedIn && premium && emailVerified) {
      message = "User has access to all features.";
    } else if (loggedIn || premium || emailVerified) {
      if (premium && emailVerified) {
        message = "User has access to Premium and Email Verified features.";
      } else if (loggedIn && premium) {
        message = "User has access to Premium and Logged In features.";
      } else if (loggedIn && emailVerified) {
        message = "User has access to Email Verified and Logged In features.";
      } else if (loggedIn) {
        message = "User has access to Logged In features.";
      } else if (premium) {
        message = "User has access to Premium features.";
      } else if (emailVerified) {
        message = "User has access to Email Verified features.";
      }
    } else {
      message = "User has no access.";
    }
    bool isSignedIn = true;
    bool hasSubscription = true;

    if (isSignedIn && hasSubscription) {
      status = "User has access to both Subscription and Signed In features.";
    } else if (isSignedIn) {
      status = "User has access to Signed In features.";
    } else if (hasSubscription) {
      status = "User has access to Subscription features.";
    } else {
      status = "User has no access.";
    }

    return Scaffold(
      body: Column(
        children: [
          Text("Logical AND of both value1 and value2 = ${value1 && value2} "),
          Text("Logical OR of both value1 and value2 = ${value1 || value2} "),
          Text("Logical NOT of value1 = ${!value1} and value2 = ${!value2} "),
          Text("Task-2::$message"),
          Text("TAsk-3:$status"),

        ],
      ),
    );
  }
}
