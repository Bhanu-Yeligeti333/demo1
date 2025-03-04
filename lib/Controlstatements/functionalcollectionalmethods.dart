// ### 2.5 Functional Collection Methods (forEach, map, where)
//
// ### Easy
//
// - **Exercise 1:**Declare a list of strings representing Flutter feature names (e.g., “Hot Reload”, “Widgets”, “State Management”). Use the `.forEach()` method to print each feature in uppercase.
//
// ### Medium
//
// - **Exercise 2:**Write a function `uppercaseWidgets` that takes a list of widget names and uses `.map()` to convert them all to uppercase. Return and print the resulting list.
//
// ### Hard
//
// - **Exercise 3:**Create a function `processApiData` that simulates processing a list of maps from an API (each map has keys “id” and “active”). Use `.where()` to filter out inactive items, then use `.map()` to extract the “id” of each active item. Return and print the list of active IDs.*Hint:* This mimics filtering and transforming backend data for display in a Flutter ListView.
import 'package:flutter/material.dart';

class Functionalcollectionalmethods extends StatefulWidget {
  const Functionalcollectionalmethods({super.key});

  @override
  State<Functionalcollectionalmethods> createState() => _FunctionalcollectionalmethodsState();
}

class _FunctionalcollectionalmethodsState extends State<Functionalcollectionalmethods> {
  List<String> notifications = ['New Message', 'Friend Request', 'App Update'];
  List<String> widgetNames = ['Text', 'Button', 'Image'];
  List<Map<String, dynamic>> apiResponse = [
    {"id": 101, "active": true},
    {"id": 102, "active": false},
    {"id": 103, "active": true},
    {"id": 104, "active": false},
    {"id": 105, "active": true}
  ];
  List<String> str=[];
  List<String> str1=[];
  List<String> str2=[];
  List<int> str3=[];
display()
{
  str.clear();
  notifications.forEach((i)
      {
        str=(notifications.map((n) => n.toUpperCase()).toList());
      });
 // str=(notifications.map((n) => n.toUpperCase()).toList());


}
add()
{
  str1.clear();
  notifications.forEach((i)
  {
    str1.add(i);
  });

}
uppercaseWidgets()
{
  str2.clear();
  str2=(widgetNames.map((n) => n.toUpperCase()).toList());

}
  processApiData()
  {
    str3=(apiResponse.where((item) => item['active'] == true).map((item) => item['id'] as int).toList());
  }
  @override
  Widget build(BuildContext context) {
    uppercaseWidgets();
    display();
    add();
    processApiData();
    return Scaffold(
      body: Column(
         crossAxisAlignment:   CrossAxisAlignment.start,
        children: [
          Text("Task-1 Upper case",style: TextStyle(color: Colors.red),),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: str.length,
              itemBuilder:(context, index) {
                return Text("${str[index]}");
              },),
          ),SizedBox(height: 4,),
          Text("Task-2 Copying the list to another list using .forEach()",style: TextStyle(color: Colors.red),),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: str1.length,
              itemBuilder:(context, index) {
                return Text("${str1[index]}");
              },),
          ),SizedBox(height: 4,),
          Text("Task-3 Converting list values to uppercase suing .MAP()",style: TextStyle(color: Colors.red),),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: str2.length,
              itemBuilder:(context, index) {
                return Text("${str2[index]}");
              },),
          ),SizedBox(height: 4,),
          Text("Task-4 Using where() and Map()", style:  TextStyle(color: Colors.red),),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: str3.length,
              itemBuilder:(context, index) {
                return Text("id:${str3[index]}");
              },),
          ),SizedBox(height: 4,),




        ],
      ),
    );
  }
}
