// ### 2.4 Do‑While Loop
//
// ### Easy
//
// - **Exercise 1:**Write a program that uses a do‑while loop to print “Hello, Flutter!” exactly once, regardless of the initial condition.
//
// ### Medium
//
// - **Exercise 2:**Create a function `processUserInput` that simulates processing user input. Use a do‑while loop to print “Processing input...” and increase a counter until it reaches 3. Print the counter after the loop finishes.
//
// ### Hard
//
// - **Exercise 3:**Write a function `animateFrame` that uses a do‑while loop to simulate an animation cycle. Start with a variable `frame` set to 0, print “Animating frame [frame]”, and increment `frame` until it reaches 5. Discuss how this loop could relate to rendering animation frames in a Flutter app.
import 'package:flutter/material.dart';

class Dowhileloop extends StatefulWidget {
  const Dowhileloop({super.key});

  @override
  State<Dowhileloop> createState() => _DowhileloopState();
}

class _DowhileloopState extends State<Dowhileloop> {
  List<String> str=[];
  List<String> str1=[];
  List<String> str2=[];
  int i=0;
  int count=0;
  int frame = 0;
  display()
  {
    do{
      str.add("Hello flutter");
      i+=1;
    } while (i < 5);

  }
  processUserInput()
  {
    do{
        str1.add("Processing input...”");
        count+=1;
    }while(count<4);
  }
  animateFrame()
  {
    do{
      str2.add('$frame');
      frame+=1;
    }while(frame<5);
  }
  @override
  Widget build(BuildContext context) {
    animateFrame();
    display();
    processUserInput();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Task-1", style:  TextStyle( color:Colors.red),),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: str.length,
              itemBuilder:(context, index) {
                return Text(" printing the Hello flutter for 5 times using do-while loop:${str[index]}");
              },),
          ),SizedBox(height: 4,),
          Text("Task-2", style:  TextStyle( color:Colors.red),),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: str1.length,
              itemBuilder:(context, index) {
                return Text("count=$count ${str1[index]}");
              },),
          ),SizedBox(height: 4,),
          Text("Task-3", style:  TextStyle( color:Colors.red),),
           Container(
            height: 100,
            child: ListView.builder(
              itemCount: str2.length,
              itemBuilder:(context, index) {
                return Text(" Animating frame ${str2[index]}");
              },),
          ),SizedBox(height: 4,),


        ],
      ),
    );
  }
}
