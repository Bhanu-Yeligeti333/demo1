// ### Easy
//
// - **Exercise 1:**Write a function `buildNotificationList` that takes a list of notifications (strings) and uses a for‑in loop to print each notification prefixed with “New: ”. Discuss how you might use this logic in a Flutter widget’s `ListView.builder`.
//
// ### Medium
//
// - **Exercise 2:**Create a function `getDisplayMessage` that uses an if‑else statement and a ternary operator to decide what message to display based on two conditions: whether a user is logged in and whether a new update is available. Return a string message, and then print it.*Hint:* Consider “Welcome back!” if logged in with no update, “Update available!” if logged in and an update exists, and “Please log in” if not logged in.
//
// ### Hard
//
// - **Exercise 3:**Simulate a Flutter data-fetching scenario:
// - Write a function `fetchAndProcessData` that first uses a while loop to simulate retrying a data fetch (e.g., “Attempting fetch…” until a simulated success condition is met after 3 tries).
// - Then, assume the data is a list of maps (each map containing “name” and “active”). Use a for‑in loop or functional methods (like `.where()` and `.map()`) to filter out inactive items and print the names of active items.*Hint:* This exercise mimics real‑world backend data processing and error handling before updating your Flutter UI.
import 'package:flutter/material.dart';

class Integration extends StatefulWidget {
  const Integration({super.key});

  @override
  State<Integration> createState() => _IntegrationState();
}

class _IntegrationState extends State<Integration> {
  List<String> widgetNames = ['Text', 'Button', 'Image'];
  List<String> str=[];
  List<String> str2=[];
  List<int> str1=[];
  String s="New:";
  bool isLoggedIn=true;
  bool hasUpdate=false;
  int attempts = 0;
  bool success = false;
  List<Map<String, dynamic>> data = [
    {"name": "Widget A", "active": true},
    {"name": "Widget B", "active": false},
    {"name": "Widget C", "active": true}
  ];
  buildNotificationList()
  {
    str.clear();
    for(String p in widgetNames) {
      str.add(s+p);
    }
  }
  getDisplayMessage(bool isLoggedIn,bool hasUpdate)
  {
return isLoggedIn?'Updated':hasUpdate?'Update available': "Welcome back!";
  }
  fetchAndProcessData(){

// str1.clear();
    while(attempts<3)
      {
        str1.add(attempts);
        attempts+=1;
      }


  }
  tell(){
    str2.clear();
    str2=data.where((item) => item['active'] == true).map((item) => item['name'] as String).toList();
  }
  @override
  Widget build(BuildContext context) {
    tell();
    buildNotificationList();
    fetchAndProcessData();
    String st=getDisplayMessage(false,false);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Task-2", style:  TextStyle(color: Colors.red),),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: str.length,
              itemBuilder:(context, index) {
                return Text("${str[index]}");
              },),
          ),SizedBox(height: 4,),
          Text("Task-2",style: TextStyle(color: Colors.red),),
          Text(st),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: str1.length,
              itemBuilder:(context, index) {
                return Text("Attempting fetch...${str1[index]}");
              },),
          ),SizedBox(height: 4,),
          Text("Task-3",style: TextStyle(color: Colors.red),),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: str2.length,
              itemBuilder:(context, index) {
                return Text("${str2[index]}");
              },),
          ),SizedBox(height: 4,),


        ],
      ),
    );
  }
}
