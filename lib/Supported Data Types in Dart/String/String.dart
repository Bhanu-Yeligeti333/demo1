import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  String? b=" ";
  String? substring=" ";
  String?firstName="";
  String?lastName="";
  String?trim=" ";

  void main() {
    String greeting = "hello  flutter!";
     b=greeting.toUpperCase();
    setState(() {});
    substring = greeting.substring(8);// Output: HELLO, FLUTTER!
  }
  void splitFullName(String fullName) {
    List<String> names = fullName.split(" "); // Split by space
     firstName = names[0]; // First name
    lastName = names[1];// Last name (if exists)
trim=fullName.trim();
  }
  @override
  Widget build(BuildContext context) {
    main();
    splitFullName("bhanu prasad");
    return Scaffold(
      body: Column(
        children: [
          Text('To Upper Casae:$b'),
          Text('To SubString:$substring'),
          Text('this is the firstName :$firstName'),
          Text('The LastName is:$lastName'),
          Text('Trim function:$trim'),


        ],
      ),
    );
  }
}
