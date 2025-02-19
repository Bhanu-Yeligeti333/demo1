import 'package:flutter/material.dart';

class Datatypes extends StatefulWidget {
  const Datatypes({super.key});

  @override
  State<Datatypes> createState() => _DatatypesState();
}

class _DatatypesState extends State<Datatypes> {

  int a=9;
  int c=8;
  int s=0;

  void Main()
  {
    s=a+c;
  }
  bool ans=false;
  void display()
  {
    int a=4;
    ans=a.isOdd;
  }
final g=9.8;

  @override
  Widget build(BuildContext context) {
    Main();
    display();
    const pi=3.24;
    List<int> num=[1,24,6,7,];
    int mul=1;
    for(int i=0;i<num.length;i++)
    {
mul*=num[i];
    }
    // iList<int> n=[];
    // for(int i=0;i<num.length;i++)
    // {
    //   n[i]=num[i];
    // }
    // for(int i=0;i<n.length;i++)
    // {
    //   print(n[i]);
    // }


    int sum=a+c;
    int add=0;




    return Scaffold(
      body: Column(
        children: [
          Text('Value of a: $a'),
          Text('Value of c: $c'),
          Text('sum of a and c is :$add'),
          Text('even multiplication:$mul'),
          Text('sum with help of add method:$s'),
          Text('final keyword:$g'),
          Text('constant:$pi'),
          Text('its is even:$ans')


        ],
      ),
    );
  }
}
