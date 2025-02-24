// ### 2.6 Maps
//
// ### Easy
//
// 1. **Basic Map Print***Task:* Create a map that associates Flutter widget names (keys) with their descriptions (values). Print the description of one widget.
// 2. **Access Keys and Values***Task:* Print all the keys of the map.
//
// ### Medium
//
// 1. **Route-to-Widget Map***Task:* Write a function that takes a map where keys are Flutter route names and values are widget class names (as strings). Iterate over the map and print each route along with its corresponding widget.
// 2. **Update a Map Entry***Task:* Write a function that updates a value in a map of configuration settings (e.g., theme: “light” changed to “dark”) and prints the updated map.
//
// ### Hard
//
// 1. **Configuration Manager***Task:* Write a function that accepts a map representing configuration settings for a Flutter app (with various key–value pairs). Update multiple entries (e.g., change font size, theme, etc.), then iterate through the map and print each setting in a formatted manner.
//
//






















import 'package:flutter/material.dart';

class Maptask extends StatefulWidget {
  const Maptask({super.key});

  @override
  State<Maptask> createState() => _MaptaskState();
}

class _MaptaskState extends State<Maptask> {
  Map<String,String> data= {
    'Colors':'Red',
    'Text':'Flutter Widget tools',
    'AI Tools':'ChatGPT , Kimi , DeepSeek',
  };
  String? m,n;

  @override
  Widget build(BuildContext context) {
    m=data['Colors'];
    n=data['AI Tools'];
    return Scaffold(
      body: Column(
        children: [
Text('$data', style: TextStyle(color: Colors.yellow),),
          Text('Elements at key value $m', style: TextStyle(color: Colors.green),),
          Text('Ele,ents at the givewmn values $n', style: TextStyle(color: Colors.red),)


        ],
      ),
    );
  }
}
