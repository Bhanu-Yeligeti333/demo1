// ### 1.3 Switch‑Case Statements
//
// ### Easy
//
// - **Exercise 1:**Write a function `navigateRoute` that accepts a string `route` and uses a switch‑case statement to print “HomeScreen” if the route is “/home”, “ProfileScreen” for “/profile”, and “SettingsScreen” for “/settings”. Provide a default case that prints “Unknown Route”. Test with at least one valid route and one invalid route.
//
// ### Medium
//
// - **Exercise 2:**Create a function `getStatusMessage` that accepts an integer `statusCode` (e.g., 200, 404, 500) and uses switch‑case to return a message: “Success” for 200, “Not Found” for 404, “Server Error” for 500, and “Unknown Status” for any other code. Test this function.
//
// ### Hard
//
// - **Exercise 3:**Write a function `selectWidget` that accepts a string `widgetType` (e.g., “list”, “grid”, “carousel”) and uses switch‑case to return the name of the widget (as a string) you would use in a Flutter app. Include a default case that returns “CustomWidget”. Then, simulate choosing a widget by printing the result for each case
import 'package:flutter/material.dart';

class Switchstatements extends StatefulWidget {
  const Switchstatements({super.key});

  @override
  State<Switchstatements> createState() => _SwitchstatementsState();
}

class _SwitchstatementsState extends State<Switchstatements> {
  navigateRoute(String route)
  {
    switch (route) {
      case '/home':
    return 'HomeScreen' ;
        break;
      case '/profile':
        return 'ProfileScreen';
        break;
      case '/settings':
       return 'settingsScreen';
        break;
      default:
        return 'Render NotFound widget';
    // return NotFoundScreen();
    }

  }
  getStatusMessage(int statusCode)
  {
    switch(statusCode)
        {
      case 200:
        return '“Success” for 200,';
        break;
      case 400:
        return 'Not Found” for 404,';
        break;
      case 500:
        return '“Server Error” for 500,';
        break;
      default:
        return 'Unknown Status ';
    }
  }
   selectWidget(String widgetType) {
    switch (widgetType) {
      case "list":
        return "ListView";
      case "grid":
        return "GridView";
      case "carousel":
        return "PageView";
      default:
        return "CustomWidget";
    }
  }

  @override
  Widget build(BuildContext context) {
    String str=navigateRoute('/profiles');
   String str1= getStatusMessage(200);
   String str2= selectWidget('carousel');
    return Scaffold(
      body: Column(
        children: [
Text(str),
          Text(str1),
          Text(str2),
        ],
      ),
    );
  }
}
