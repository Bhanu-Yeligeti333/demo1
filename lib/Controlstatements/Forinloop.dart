// ### 2.2 For‑In Loop
//
// ### Easy
//
// - **Exercise 1:**Declare a list of integers representing item IDs (e.g., [1, 2, 3, 4]). Use a for‑in loop to print each ID.
//
// ### Medium
//
// - **Exercise 2:**Write a function `printNotificationMessages` that takes a list of strings (notification messages) and uses a for‑in loop to print each message preceded by “Notification: ”.
//
// ### Hard
//
// - **Exercise 3:**Create a function `filterActiveWidgets` that takes a list of maps (each representing a widget with keys “name” and “active” as a boolean). Use a for‑in loop to iterate through the list and print the names of only those widgets that are active.*Hint:* This simulates filtering data from a backend API before rendering widgets.
import 'package:flutter/material.dart';

class Forinloop extends StatefulWidget {
  const Forinloop({super.key});

  @override
  State<Forinloop> createState() => _ForinloopState();
}

class _ForinloopState extends State<Forinloop> {
  List<Map<String, dynamic>> widgets = [
    {"name": "Button", "active": true},
    {"name": "TextField", "active": false},
    {"name": "Image", "active": true}
  ];
  String str2="Notification:";
  List<int> num=[1,2,3,4,5,7,8,9,10];
  List<int> rev=[];
  List<String> notifications = [
    "New friend request!",
    "Your order has been shipped.",
    "You have a new message."
  ];
  List<int> str=[];
  List<String> str1=[];
  List<String> str3=[];
  display()
  {
    str.clear();
    for(int i in num){
      str.add(i);

    }
  }
  printNotificationMessages()
  {
    str1.clear();
 for(String i in notifications)
   {
     str1.add(str2+i);
   }
  }
  reverse()
  {
    for(int i=num.length-1;i>=0;i--){
      rev.add(num[i]);
    }
  }
   filterActiveWidgets() {
    str3.clear();
    for (var widget in widgets) {
      if (widget["active"] == true) {
        str3.add("Active Widget: ${widget["name"]}");
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    filterActiveWidgets();
    reverse();
    display();
    printNotificationMessages();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Text("task-1",style: TextStyle(color:Colors.orange),),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: str.length,
              itemBuilder:(context, index) {
                return Text(" ${str[index]}");
              },),
          ),SizedBox(height: 4,),
          Text("Task-2", style: TextStyle(color: Colors.lightGreen),),
          Container(
            height: 90,
            child: ListView.builder(
              itemCount: str1.length,
              itemBuilder:(context, index) {
                return Text(" ${str1[index]}");
              },),
          ),SizedBox(height: 3,),
          Text("Task-3: numbers in reverse order:",style: TextStyle( color: Colors.red),),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: rev.length,
              itemBuilder:(context, index) {
                return Text(" ${rev[index]}");
              },),
          ),
          SizedBox(height: 2,),
          Text("Task-4", style:  TextStyle( color:Colors.red),),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: str3.length,
              itemBuilder:(context, index) {
                return Text(" ${str3[index]}");
              },),
          )




        ],
      ),
    );
  }
}
