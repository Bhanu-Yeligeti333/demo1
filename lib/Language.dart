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
  final a=GlobalKey<FormState>();
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
          //       //
          //       // ElevatedButton(
          //       //   onPressed: () {
          //       //     if (_formKey.currentState!.validate()) {
          //       //       // Form is valid, proceed with submission
          //       //       print("Form is valid!");
          //       //     }
          //       //   },
          //       //   child: Text("Submit"),
          //       // ),
          //     ],
          //   ),
          // )
          Form(
            key: a,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'enter mobile numbejjr',
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if(value==null||value.isEmpty)
                      {
                        return 'filed is empty enter mobile number';
                      }
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                return 'Enter a valid 10-digit mobile number';
              }
              return null;
                  },
                ),
                 ElevatedButton(onPressed: () {
      if (a.currentState!.validate()) {
                    // Form is valid, proceed with submission
                    //print("Form is valid!");
                  }

                 },
                     child: Text('submit'))
              ],
            ),
          )


        ],
      ),
    );
  }
}
class Regular extends StatefulWidget {
  const Regular({super.key});

  @override
  State<Regular> createState() => _RegularState();
}

 class _RegularState extends State<Regular> {
//   main() {
//     RegExp b = RegExp(r'^[a-z]'); // Matches strings starting with a lowercase letter
//     String str = "bhanu";
//
//     print(b.hasMatch(str)); // Pass the string as an argument
//   }
//print("hello");
   main() {
     String str = 'bhanu prasad Yelogeti';
     str.split('').forEach((char) => print(char));
   }
   int count=0;
   double b=0;
   @override
   Widget build(BuildContext context) {
     // RegExp b = RegExp(r'^[a-z]'); // Matches strings starting with a lowercase letter
     String str = "bhanu     prasadhuygxcbsjh";
     String str3 = "bhanu     prasadhuygxcbsjh";
     // RegExp c=RegExp(r'^[a-z0-9A-Z]+$');
     List<String> str5 = str3.split('');
     List<String> str1 = [];
     str1 = str.split(RegExp(r'\s+'));
     print(str1);
     print(str5);

     main();

     // print(b.hasMatch(str));
     // print("hello");
     return Scaffold(

       body: Column(
         children: [
           Align(
             alignment: Alignment.bottomLeft,
             child: FloatingActionButton(onPressed:() {
               setState(() {
                 if(count<50) {
                   count += 1;
                 }
               });


             },
              backgroundColor: Colors.red,
              child: Icon(Icons.add),
             ),
           ),
           Text('$count'),
           Slider(value: b,
               min: 0,
               max: 100,
               divisions: 20,

               activeColor: Colors.red,
               onChanged: (valu) {
             setState(() {
               b=valu;


             });
             // b=value;

               },),
           ListTile(trailing: PopupMenuButton<String>(
               onSelected: (value) {
                 print("Selected: $value");
               },
               itemBuilder: (context) => [
                 PopupMenuItem(
                  // value: "Optio",
                   child: Text("Option- 1"),
                 ),
                 PopupMenuItem(
                   value: "Option 2",
                   child: Text("Option 2"),
                 ),
               ],
             ),
           ),
PopupMenuButton<String>(
  onSelected: (value) {
    print("Selected: $value");
  },
     itemBuilder: (context) =>
  [
    PopupMenuItem(
      // value: "Optio",
      child: Text("Option- 1"),
    ),
    PopupMenuItem(
      // value: "Optio",
      child: Text("Option- 1"),
    ),
     ]
     ),
           PopupMenuButton(onSelected: (value) {

           },
               itemBuilder: (context) =>[PopupMenuItem(child: Text("hello")),])
     ]
       )

);

   }
 }



