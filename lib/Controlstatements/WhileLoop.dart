// ### 2.3 While Loop
//
// ### Easy
//
// - **Exercise 1:**Write a simple program that uses a while loop to print numbers from 1 to 5.
//
// ### Medium
//
// - **Exercise 2:**Create a function `retryRequest` that uses a while loop to simulate a network request retry mechanism. Declare an integer `attempt` that starts at 0, and while `attempt` is less than 3, print “Attempt [attempt + 1]”. Increment the attempt each time, then print “Max attempts reached” when the loop finishes.
//
// ### Hard
//
// - **Exercise 3:**Write a function `simulateLoading` that uses a while loop to simulate a loading process. Use a variable `progress`(starting at 0) and increment it by 20 until it reaches or exceeds 100. In each iteration, print “Loading: [progress]%”.*Hint:* Think of this as updating a progress indicator in Flutter.
import 'package:flutter/material.dart';

class Whileloop extends StatefulWidget {
  const Whileloop({super.key});

  @override
  State<Whileloop> createState() => _WhileloopState();
}

class _WhileloopState extends State<Whileloop> {
  List<int> num=[];
  List<int> num1=[];
  List<int> num2=[];

  int i=0;
  int progress=0;
  int attempt=0;
  display()
  {
    while(i<=15)
      {
        num.add(i);
        i+=1;
      }
  }
  retryRequest()
  {
    while(attempt<3)
      {
        num1.add(attempt+1);
        attempt+=1;
      }
  }
  simulateLoading()
  {
    while(progress<100)
    {
        num2.add(progress);
        progress+=20;
    }
  }
  @override
  Widget build(BuildContext context) {
    simulateLoading();
    display();
    retryRequest();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Task-1", style:  TextStyle( color:Colors.red),),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: num.length,
              itemBuilder:(context, index) {
                return Text(" ${num[index]}");
              },),
          ),SizedBox(height: 4,),
          Text("Task-2", style:  TextStyle( color:Colors.red),),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: num1.length,
              itemBuilder:(context, index) {
                return Text(" ${num1[index]}");
              },),
          ),
          SizedBox(height: 2,),
          Text("Task-3", style:  TextStyle( color:Colors.red),),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: num2.length,
              itemBuilder:(context, index) {
                return Text(" ${num2[index]}");
              },),
          )


        ]
      ),
    );
  }
}
