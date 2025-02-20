// ### 2.5 Sets
//
// ### Easy
//
// 1. **Unique Color Themes***Task:* Create a set of color names (e.g., “blue”, “red”, “green”) used in a Flutter theme and print the set.
// 2. **Check for Existence***Task:* Check if a specific color (e.g., “red”) exists in the set and print the result.
//
// ### Medium
//
// 1. **List to Set Conversion***Task:* Write a function that takes a list of widget names (with possible duplicates), converts it to a set to remove duplicates, and prints the unique widget names.
// 2. **Adding and Removing***Task:* Write a function that demonstrates adding a duplicate element to a set and then removing an element. Print the set before and after removal.
//
// ### Hard
//
// 1. **Filter Even IDs***Task:* Given a list of integers representing Flutter widget IDs, write a function that returns a set of even IDs.*Hint:* Use `.where()` and then convert to a set.
//






import 'package:flutter/material.dart';

class Settask extends StatefulWidget {
  const Settask({super.key});

  @override
  State<Settask> createState() => _SettaskState();
}

class _SettaskState extends State<Settask> {
  bool?exists;
  bool?exist;

  @override
  Widget build(BuildContext context) {
    final n,colors;
    List<String> name=['Blue','Red','Green','Green','Red','White','Black','Blue'];
    Set<String> colorThemes = {"blue", "red", "green", "yellow"};
    bool exists = colorThemes.contains('yellow');
    bool exist = colorThemes.contains('pink');
    final even,odd;
    List<int> h=[347,374,374,347,87,98];
    even =h.toSet().where((m)=>m.isEven);
    odd =name.toSet();
    return Scaffold(
      body: Column(
        children: [
          Text('All the Set values are:$colorThemes',style:   TextStyle(color:  Colors.deepOrange),),
Text('The Colors is foumnd in the set:$exists',style:  TextStyle(color: Colors.lightBlue),),
          Text('The Colors is nNOT in the set:$exist',style:  TextStyle(color: Colors.red),),
          Text('before the conversion of the list:$name',style:  TextStyle(color: Colors.green),),
          Text("Listed is converted into set :- $odd",style: TextStyle(color: Colors.pink),),
          Text('only EVEN values from given list:$even',style: TextStyle(color: Colors.grey),)



        ],
      ),
    );
  }
}
