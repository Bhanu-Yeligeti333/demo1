// ## 2. Loops
//
// ### 2.1 For Loop
//
// ### Easy
//
// - **Exercise 1:**Write a program that declares a list of three Flutter widget names (e.g., “Text”, “Button”, “Image”). Use a for loop to print each widget name along with its index.
//
// ### Medium
//
// - **Exercise 2:**
//
// Create a function `buildWidgetList` that takes a list of strings (widget names) and uses a for loop to create and return a new list where each widget name is prefixed with “Widget: ”. Print the resulting list.
//
// *Hint:* This simulates creating a list of widget labels.
//
//
// ### Hard
//
// - **Exercise 3:**Write a function `simulateWidgetCreation` that uses a for loop to simulate generating widget IDs from 100 to 105. For each iteration, print “Created widget with ID: [ID]”. Discuss how this could relate to dynamically generating items in a Flutter ListView.
import 'package:flutter/material.dart';

class Loopings extends StatefulWidget {
  const Loopings({super.key});

  @override
  State<Loopings> createState() => _LoopingsState();
}

class _LoopingsState extends State<Loopings> {
  String stri='widget:';
  List<String> widgets = ["Text", "Button", "Image"];
  List<String> str=[];
  List<String> str1=[];
  List<String> str2=[];
  List<int> str3=[];
  List<int> str4=[];


  display(){
    str.clear();
    for(int i=0;i<widgets.length;i++)
      {

       str.add(widgets[i]);
      }
  }
  buildWidgetList()
  {
    str1.clear();
    for(int i=0;i<widgets.length;i++)
    {

      str1.add(stri+widgets[i]);
    }
  }
  simulateWidgetCreation() {
    for (int id = 100; id <= 105; id++) {
      str2.add("Created widget with ID: $id");
    }
  }
printArrayvalues()
{
  str3.clear();
  for(int i=0;i<5;i++)
  {

    str3.add(5*i);
  }
}
Multiply()
  {
    str4.clear();
    for(int i=0;i<11;i++)
    {

      str4.add(5*i);
    }
  }

  @override
  Widget build(BuildContext context) {
    Multiply();
    printArrayvalues();
    display();
    buildWidgetList();
    simulateWidgetCreation();
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: widgets.length,
              itemBuilder:(context, index) {
              return Row(
                children: [
                  Text('Element at index $index is: ${str[index]}'),

                ],
              );
            },),
          ),SizedBox(height: 20),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: widgets.length,
              itemBuilder:(context, index) {
                return Text(str1[index]);
              },),
          ),
          SizedBox(height: 4,),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: str2.length,
              itemBuilder:(context, index) {
                return Text(str2[index]);
              },),
          ),
          SizedBox(height: 4,),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: str3.length,
              itemBuilder:(context, index) {
                return Text("Index $index: ${str3[index]}");
              },),
          ),
          SizedBox(height: 3,),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: str4.length,
              itemBuilder:(context, index) {
                return Text("Mulitiplication of 5* $index =: ${str4[index]}");
              },),
          )


        ],
      ),
    );
  }
}
