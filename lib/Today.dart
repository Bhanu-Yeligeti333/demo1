import 'package:flutter/material.dart';
import 'package:practice/Functions/ReturnValues/Return.dart';
import 'package:practice/main.dart';

class Today extends StatefulWidget {
  const Today({super.key});

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  final String text = "Hello from First Screen!";
  bool a=true;
  bool _isObscured = true;
  bool?checked=false;
  bool?k=false;
  bool?p=false;
  List<String> i= ['First Name',"Last Name",'Email','Passowrd','Confirm Password'];
  List<Widget> m=[Icon(Icons.person),Icon(Icons.person),Icon(Icons.email),Icon(Icons.password_sharp),Icon(Icons.password_sharp),];
  @override
  Widget build(BuildContext context) {
    main();
    return Scaffold(
      
      body: Column(
        children: [
    //       Center(child: Text("Here there,",style: TextStyle(color: Colors.black),)),
    //       Center(child: Text("Create an Account",style: TextStyle(color: Colors.black,fontSize: 40),)),
    //       SizedBox(height: 10),
    //       TextField(
    //                 decoration: InputDecoration(
    //                   prefixIcon:Icon(Icons.person),
    //                   hintText: 'First Name',
    //         border: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(10),
    //         )
    //                 ),
    //
    //               ),SizedBox(height: 10,),
    //       TextField(
    //         decoration: InputDecoration(
    //             prefixIcon:Icon(Icons.person),
    //             hintText: 'Last Name',
    //             border: OutlineInputBorder(
    //               borderRadius: BorderRadius.circular(10),
    //             )
    //         ),
    //
    //       ),SizedBox(height: 10,),
    //       TextField(decoration: InputDecoration(
    //             prefixIcon:Icon(Icons.email),
    //             hintText: 'Email',
    //             border: OutlineInputBorder(
    //               borderRadius: BorderRadius.circular(10),
    //             )
    //         ),),SizedBox(height: 10,),
    //       TextField(
    //
    //         keyboardType: TextInputType.number,
    //         obscureText: a,
    //         decoration: InputDecoration(
    //             prefixIcon:Icon(Icons.password),
    //             hintText: 'PassWord',
    //             suffixIcon: IconButton( // Ensure correct spelling
    //               icon: Icon(a? Icons.visibility_off : Icons.visibility),
    //               onPressed: () {
    //                 setState(() {
    //                   a = !a; // Toggle the value correctly
    //                 });
    //               },
    //             ),
    //             border: OutlineInputBorder(
    //               borderRadius: BorderRadius.circular(10),
    //             )
    //         ),
    //
    //
    //       ),SizedBox(height: 10,),
    //       // TextField(
    //       //   decoration: InputDecoration(
    //       //       prefixIcon:Icon(Icons.person),
    //       //       suffixIcon: Icon(Icons.remove_red_eye),
    //       //       hintText: 'Last Name',
    //       //       border: OutlineInputBorder(
    //       //         borderRadius: BorderRadius.circular(10),
    //       //       )
    //       //   ),
    //       //
    //       // ),SizedBox(height: 10,),
    //       TextField(
    //         keyboardType: TextInputType.number,
    //         obscureText:_isObscured,
    //         decoration: InputDecoration(
    //             prefixIcon:Icon(Icons.password),
    //             hintText: 'Confirm Password',
    //             // suffixIcon: Icon(Icons.remove_red_eye),
    //             border: OutlineInputBorder(
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    // suffixIcon: IconButton( // Ensure correct spelling**
    // icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
    // onPressed: () {
    // setState(() {
    // _isObscured = !_isObscured; // Toggle visibility
    // });
    // },
    // ),
    //         ),
    //
    //       ),SizedBox(height: 10,),
    //       SizedBox(height: 10,),
    //       Row(
    //         children: [
    //           Checkbox(
    //               value:checked,
    //               onChanged:(value) {
    //                 setState(() {
    //                   checked=value!;
    //                 });
    //
    //               },),SizedBox(width: 10,),
    //           Text("By Creating an Account You agree is our\n Conformation",style:TextStyle(decoration: TextDecoration.underline),),
    //         ],
    //       ),
    //       SizedBox(height: 10,),
    //       InkWell(
    //         onTap: () {
    //           Navigator.push(context, MaterialPageRoute(builder: (context) => Return(),));
    //         },
    //
    //         child: Container(
    //            width: 300,
    //           height: 50,
    //           child:Center(child: Text('Register',style:  TextStyle(color: Colors.black),)),
    //           decoration: BoxDecoration(
    //             borderRadius:  BorderRadius.circular(10),
    //         color: Colors.red,
    //           ),
    //
    //         ),
    //       ),SizedBox(height: 10,),
    //       Row(
    //         children: [
    //           Text("Alreday have an account?",style: TextStyle(color: Colors.red),),
    //           TextButton(onPressed: (  ) {
    //            showModalBottomSheet(context: context,
    //                builder: (context) {
    //              return Container(
    //                width: 100,
    //                height: 100,
    //                color:Colors.green,
    //
    //              );
    //
    //
    //                },);
    //
    //           }, child: Text("Login",style: TextStyle(color: Colors.blue),))
    //         ],
    //       ),
          Icon(Icons.visibility_off),
          // ElevatedButton(
          //     onPressed: () {
          //       Navigator.push(context, MaterialPageRoute(builder: (context) => Man(text: text),));
          //
          //     },
          //     child: Text("click this to go to thrid screen")),

          TextField(
            controller: _controller1,
            decoration: InputDecoration(labelText: "Enter First Value"),
          ),
          SizedBox(height: 10),
          TextField(
            controller: _controller2,
            decoration: InputDecoration(labelText: "Enter Second Value"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to ScreenTwo and pass text values
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Man(
                    value1: _controller1.text,
                    value2: _controller2.text,
                    text: "Default Text Here",
                  ),
                ),
              );
            },
            child: Text("Submit"),
          ),



            ]

    ),
    );

  }
}
class Man extends StatelessWidget {
  final String value1;
  final String value2;
  final String text;

  String ?s="kkk";
//final String text;
  Man({required this.value1, required this.value2, required this.text});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Text('$s!'),
          Text("helloooooo"),
          Text(text),
          TextField(
            decoration: InputDecoration(labelText: "First Value"),
            readOnly: true,
            controller: TextEditingController()..text = value1, // ✅ Fixed
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(labelText: "Second Value"),
            readOnly: true,
            controller: TextEditingController()..text = value2, // ✅ Fixed
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Go back to ScreenOne
            },
            child: Text("Submit Again"),
          ),

        ],
      )
    );
  }
}

