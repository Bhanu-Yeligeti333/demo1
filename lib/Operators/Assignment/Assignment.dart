//
//
// ### Easy
//
// 1. **Increment Example***Task:* Write a simple program that declares an integer variable and uses the `+=` operator to increase its value, then prints the result.
//
// ### Medium
//
// 1. **Button Press Counter***Task:* Write a function that simulates a Flutter button press counter. Use assignment operators (like `++` or `+=`) to update the count and print the current count.
//
// ### Hard
//
// 1. **Multi-Variable Update***Task:* Write a function that simulates updating several aspects of a Flutter app’s state (e.g., a counter, a progress value, and a score) using combined assignment operators. Print the state before and after the update.
//
//
//
//













import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  int a=26;
  int b=1;
  int c=1;

  void main()
  {
    a++;
    b+=b;
    c+=b;
  }
  int d=20;
  int e=21;
  int f=22;
  int  k=0,m=0,n=0;

  void mains()
  {

    k=d++;
    m=e++;
    n=f++;


  }
  int g= 0;


  void buttonPressed() {
    setState(() {
      g++;
    });
  }
  @override
  Widget build(BuildContext context) {
    main();
    mains();
    return Scaffold(body: Column(children: [
      Text("Increment in a = $a ,b =$b , c = $c "),
      Text("Initial values  of\n a = $k,\nb =$m,\n c = $n "),
      Text("After Increment of\n a = $a,\nb =$b,\n c = $c \n"),
    Column(
      children: [
        Center(child: Text("$g")),
      ],
    ),SizedBox(height: 30,),Center(
    child: TextButton(
    onPressed: buttonPressed,
    child: Text("Increment",textScaleFactor: 2,)

    ),),],),);
  }
}
