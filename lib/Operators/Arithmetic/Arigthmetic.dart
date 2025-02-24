import 'package:flutter/material.dart';





// ### 3.1 Arithmetic Operators
//
// ### Easy
//
// 1. **Basic Arithmetic***Task:* Write a program that declares two integer variables and prints the results of addition, subtraction, multiplication, division, and modulus.
//
// ### Medium
//
// 1. **In-App Purchase Total***Task:* Write a function that calculates the total price of an in‑app purchase given a unit price (double) and quantity (int) using arithmetic operators. Print the total price.
//
// ### Hard
//
// 1. **Average Rating Calculator***Task:* Write a function that takes a list of integer ratings (for example, from 1 to 5) and computes the average rating using arithmetic operators and integer division where appropriate. Print the average rating with one decimal place.
//













class Arigthmetic extends StatefulWidget {
  const Arigthmetic({super.key});

  @override
  State<Arigthmetic> createState() => _ArigthmeticState();
}

class _ArigthmeticState extends State<Arigthmetic> {


  int? quentity;
  double? price;
  double? Total_price;
  void main()
  {
    int quentity=2;
    double price=450;
    Total_price=(quentity*price);
    quentity=quentity;
    price=price;
  }
  int? add;
  int? len;
  double? tot;String? m;
  void mains() {
    List<int> rate = [1, 4, 5, 2, 4, 5, 3, 4, 2];
    len = rate.length;
    add=rate.reduce((a,b) => a+b);
    tot=add!/len!;
    tot=tot;
    m=tot?.toStringAsFixed(1) ;
  }

  @override
  Widget build(BuildContext context) {
    int  a = 10;
    int  b = 3;
    int sum=a+b;
    int sub=a-b;
    int mul=a*b;
    int div=a%b;
    main();
    mains();



    return Scaffold(
      body: Column(
        children: [
          Text('TAsk-1'),
          Text('Addition:$sum!'),
          Text('Subtraction:$sub'),
        Text('Muultlipication:$mul'),
          Text('Division:$div'),
          Text("TAsk-2:Total Cost in the app_purchase $Total_price "),
          Text("TAsk-3:Average Rating in the List = $m ")


        ],
      ),
    );
  }
}
