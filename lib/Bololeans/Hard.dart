import 'package:flutter/material.dart';

class Hard extends StatefulWidget {
  const Hard({super.key});

  @override
  State<Hard> createState() => _HardState();
}

class _HardState extends State<Hard> {
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

    return Scaffold(
      body: Column(
        children: [
          Text(checkUserVerification(true, true, true)),
          Text(checkUserVerification(false, true, true)),
          Text(checkUserVerification(true, false, true)),

        ],
      ),

    );
  }
}
