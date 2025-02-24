// 1. **Conditional Widget Text***Task:*
// Write a function that accepts a boolean (e.g.,`isDarkMode`) and returns a string “Dark Mode” if true or “Light Mode” if false.
// Then, display this string in a Flutter`Text`widget.
import 'package:flutter/material.dart';
import 'package:practice/Bololeans/Hard.dart';
import 'package:practice/Bololeans/Median.dart';
import 'package:practice/Bololeans/Task1.dart';
import 'package:practice/Bololeans/Task2.dart';
import 'package:practice/Functions/Anonymous%20Functions%20(Lambdas)/Lambdas.dart';
import 'package:practice/Functions/ArrowsFunctions/Arrows.dart';
import 'package:practice/Functions/Basic%20Function%20Declaration%20and%20Calling/Basic.dart';
import 'package:practice/Functions/FunctionParamaters/Namedparameters.dart';
import 'package:practice/Functions/FunctionParamaters/Optional%20Positional%20Parameters.dart';
import 'package:practice/Functions/FunctionParamaters/Required%20Positional%20Parameters.dart';
import 'package:practice/Functions/Higher%E2%80%91Order%20Functions/Higher.dart';
import 'package:practice/Functions/Recursion/Recursion.dart';
import 'package:practice/Functions/ReturnValues/Return.dart';
import 'package:practice/Operators/Bitwise/Bitwise.dart';
import 'package:practice/Operators/Logical/Logical.dart';
import 'package:practice/Supported%20Data%20Types%20in%20Dart/List/Task.dart';
import 'package:practice/Supported%20Data%20Types%20in%20Dart/Map/Maptask.dart';
import 'package:practice/Supported%20Data%20Types%20in%20Dart/Numbers/Task3.dart';
import 'package:practice/Supported%20Data%20Types%20in%20Dart/String/String.dart';
import 'package:practice/Supported%20Data%20Types%20in%20Dart/sets/Settask.dart';
import 'package:practice/variables/Easy/Multivaraibles.dart';



// ### Easy
//
// 1. **Uppercase Conversion***Task:* Declare a string with a greeting (e.g., “hello, flutter!”) and print the string in uppercase.
// 2. **Substring Extraction***Task:* Declare a string for a Flutter widget’s title (e.g., “Flutter Widgets”) and print a substring that contains just “Widgets.”
//
// ### Medium
//
// 1. **Full Name Split***Task:* Write a function that accepts a full name (e.g., “John Doe”) and extracts the first and last names using `substring` (or `split`), then prints them separately.
// 2. **String Manipulation for UI***Task:* Create a function that takes a string (a widget’s label) and returns the trimmed and capitalized version (e.g., convert “ home screen ” to “Home Screen”).
//
// ### Hard
//
// 1. **Widget Title Formatter***Task:* Write a function that accepts a string representing a Flutter widget’s title and:
// - Trims leading/trailing whitespace.
// - Capitalizes the first letter of each word.
// - Checks if the title contains a specific substring (like “Flutter”) and appends “ - Official” if it does. *Use this function in a small Flutter app to format and display the widget title.*
//
//
//
//





import 'package:practice/variables/Medium/Medium.dart';
import 'package:practice/variables/datatypes.dart';

import 'Operators/Arithmetic/Arigthmetic.dart';
import 'Operators/Assignment/Assignment.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home:Higher(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
