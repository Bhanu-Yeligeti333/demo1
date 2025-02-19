import 'package:flutter/material.dart';

class Multi extends StatefulWidget {
  const Multi({super.key});

  @override
  State<Multi> createState() => _MultiState();
}

class _MultiState extends State<Multi> {
  int selectedAge = 12;
  final Flutter_Project_Name="Variables";
  static const Dob_y=2001;
  bool flag=true;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: [
          Text("${selectedAge}"),
          Text("${Flutter_Project_Name}"),
          Text("${Dob_y}"),
          Text("${flag}"),
          Text(flag ? "U are in Variable Project" :"U have to Create new Variable Project")
        ],
      ),
    );
  }
}
