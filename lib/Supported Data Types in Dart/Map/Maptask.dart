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
