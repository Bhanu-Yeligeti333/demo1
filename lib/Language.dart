import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RR extends StatefulWidget {
  const RR({super.key});

  @override
  State<RR> createState() => _JustState();
}

class _JustState extends State<RR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
Text("hello",style:GoogleFonts.abel(color: Colors.red,fontSize: 100),),
          Text("hello",style:GoogleFonts.abyssinicaSil(color: Colors.pinkAccent,fontSize: 200),),
          Text("hello",style:GoogleFonts.adventPro(color: Colors.lightGreen,fontSize: 90)),


        ],
      ),
    );
  }
}
class Validation extends StatefulWidget {
  const Validation({super.key});

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Form(
          //   key: _formKey,
          //   child: Column(
          //     children: [
          //       TextFormField(
          //         decoration: InputDecoration(labelText: "Email"),
          //         validator: (value) {
          //           if (value == null || value.isEmpty) {
          //             return 'Email is required';
          //           }
          //           if (!value.contains('@')) {
          //             return 'Enter a valid email';
          //           }
          //           return null;
          //         },
          //       ),
          //       TextFormField(
          //         decoration: InputDecoration(labelText: 'Enter mobile number'),
          //         validator: (value) {
          //           if (value == null || value.isEmpty) {
          //             return 'Mobile number is required';
          //           }
          //           if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
          //             return 'Enter a valid 10-digit mobile number';
          //           }
          //           return null;
          //         },
          //       ),
          //
          //
          //       ElevatedButton(
          //         onPressed: () {
          //           if (_formKey.currentState!.validate()) {
          //             // Form is valid, proceed with submission
          //             print("Form is valid!");
          //           }
          //         },
          //         child: Text("Submit"),
          //       ),
          //     ],
          //   ),
          // )
          Form(
            key: _formKey,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'mobile number',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
    if (value == null || value.isEmpty) {
                return 'Mobile number is required';
              }
              if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                return 'Enter a valid 10-digit mobile number';
              }
              return null;
            },
          ),


            ),

          ElevatedButton(
              onPressed: () {
      if (_formKey.currentState!.validate()) {
                    // Form is valid, proceed with submission
                    print("Form is valid!");
                  }
                },


              child: Text("submit"))


        ],
      ),
    );
  }
}

