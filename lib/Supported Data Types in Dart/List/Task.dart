// ### 2.4 Lists
//
// ### Easy
//
// 1. **Widget List***List_Task:* Create a list containing names of three Flutter widgets (e.g., “Text”, “Container”, “Row”) and print the entire list.
// 2. **Access Elements***List_Task:* Print the first element from the widget list.
//
// ### Medium
//
// 1. **Dynamic List Modification***List_Task:* Write a function that starts with a list of strings representing Flutter dependency names. Add a new dependency to the list, remove one, and then print the updated list along with its length.
// 2. **Iterate and Print***List_Task:* Write a function that iterates over a list of route names (e.g., “/home”, “/profile”, “/settings”) and prints each one on a new line.
//
// ### Hard
//
// 1. **Route Filter and Sort***List_Task:* Write a function that takes a list of Flutter route names.
// - Filter out any routes that do not start with “/”.
// - Sort the remaining routes alphabetically.
// - Return or print the final sorted list. *Hint:* Use methods like `.where()` and `.toList()`.









import 'package:flutter/material.dart';

class List_Task extends StatefulWidget {
  const List_Task({super.key});

  @override
  State<List_Task> createState() => _List_TaskState();
}

class _List_TaskState extends State<List_Task> {
  String? str;
  String?first;
  String?second;
  String?third;
  String?m;




  // Printing the entire list

  @override
  Widget build(BuildContext context) {
    List<String> widgetList = ["Text", "Container", "Row"];
    List<String> routes = ["/bhanu\n", "/prasad\n", "/yeligeti\n"];

    List<String> name=['/Setting', '/Home', '/Profile'];
    List<String> n=['/Setting', '/Home', '/Profile','Row','/Contact','/History','Column','Text'];
    name.sort();
    m=  name.where((name)=> name.startsWith('/')).toString();


    // Printing the entire list
    str=widgetList.toString();
    first=widgetList[0];
    second=widgetList[1];
    third=widgetList[2];
    widgetList.add("widget");
    widgetList.add("cointainer");
    widgetList.remove('Row');


    return Scaffold(
      body: Column(
        children: [
          Text( 'The List  of values are :$widgetList', style: TextStyle(color: Colors.yellow),),
          Text('Second Position element:$first'),
          Text('First Position element:$second',style: TextStyle(color: Colors.red),),
          Text('Third Position element:$third'),
          Text('add the two values that are: $widgetList'),
          Text('Before Removing the  values that are: $widgetList',style:  TextStyle(color: Colors.green),),
          Text('After  deleted thew value at second index$widgetList'),
          Text('$routes'),
          Text('without newline:$name', style: TextStyle(color: Colors.pink),),
          Text("The Entire list :- $m",style: TextStyle(color: Colors.deepOrange),)


        ],
      ),
    );
  }
}
