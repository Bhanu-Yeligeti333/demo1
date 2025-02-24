
//
// ### 3.4 Bitwise Operators
//
// ### Easy
//
// 1. **Basic Bitwise Manipulation***Task:* Write a program that demonstrates bitwise AND, OR, and XOR on two small integers and prints the results.
//
// ### Medium
//
// 1. **Toggle Settings Flag***Task:* Assume a Flutter app uses an integer as a bit-field for settings. Write a function that toggles a specific flag (using bitwise XOR or OR) and prints the updated settings integer.
//
// ### Hard
//
// 1. **Flag Extraction and Combination***Task:* Write a function that simulates a Flutter widget’s configuration stored as an integer with multiple flag bits. Use bitwise operators to extract certain flag values, modify them, and then combine the parts back into a single integer. Print the final result. *Hint:* Use left/right shifts and bit masks.
//
//


















import 'package:flutter/material.dart';

class Bitwise extends StatefulWidget {
  const Bitwise({super.key});

  @override
  State<Bitwise> createState() => _BitwiseState();
}

class _BitwiseState extends State<Bitwise> {
  var settingsValue = 0x0B; // Initial settings (binary representation)
  var toggleFlag = 0x1B; // Flag to toggle

  void toggleSetting() {
    settingsValue ^= toggleFlag;
  }
  int settings = 11010110;
  int? updatedSettings;

  int a=8;
  int b=7;
  int? xorResult;
  int? orResult;
  int? andResult;
  void main() {


    andResult = a & b;  //And
    orResult = a | b;   //or
    xorResult = a ^ b;
    andResult=andResult;
    orResult=orResult;
    xorResult=xorResult;
  }
  @override
  Widget build(BuildContext context) {
    int? optionA;
    int? optionB;

    void processFlags() {
      int optionA = (settings >> 4) & 0x0F;
      int optionB = settings & 0x0F;
      optionA ^= 0x04;
      optionB |= 0x02;

      updatedSettings = (optionA << 4) | optionB;
    }

    processFlags();
    main();
    toggleSetting();
    return Scaffold(
      body: Column(children: [ Text("$andResult"),
        Text("$orResult"),
        Text("$xorResult"),
        Text("$updatedSettings"),
        Text("$settingsValue"),

      ],),
    );
  }
}
