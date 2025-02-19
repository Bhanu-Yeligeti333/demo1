import 'package:flutter/material.dart';

class Medium extends StatefulWidget {
  const Medium({super.key});

  @override
  State<Medium> createState() => _MediumState();
}

class _MediumState extends State<Medium> {
  var k ="f";
  String? m;

  String? deep;


  void variable()
  {
    var My_Flutter_Project="Variable_Task_2";
    String Widget="Text_Widget";
    k=My_Flutter_Project;
    m=Widget;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    variable();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("My Flutter Project ${k} is Amazing because ${m} is awesome"),
        ],
      ),
    );
  }
}
