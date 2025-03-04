// import 'package:flutter/material.dart';
// import 'package:practice/Card.dart';
// import 'package:practice/Functions/Recursion/Recursion.dart';
//
// import '../Assign.dart';
//
// class Bottom extends StatefulWidget {
//   const Bottom({super.key});
//
//   @override
//   State<Bottom> createState() => _BottomState();
// }
//
// class _BottomState extends State<Bottom> {
//   final List<Widget> pages=[ Homepage(),];
//   int _selectedIndex=0;
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     }
//
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap:_onItemTapped,
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.red,
//           items: [
//             BottomNavigationBarItem(icon: Icon((Icons.home),),label: "home"),
//             BottomNavigationBarItem(icon: Icon((Icons.favorite_border),),label: "Favourite"),
//             BottomNavigationBarItem(icon: Icon((Icons.person),),label: "Profile"),
//
//           ]),
//     );
//
//   }
// }
// class Homepage extends StatefulWidget {
//   const Homepage({super.key});
//
//   @override
//   State<Homepage> createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   int isSelected=0;
//   Widget myCustomWidget(String name, int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isSelected = index; // Update selected index
//         });
//       },
//       child: Container(
//         width: 100,
//         height: 40,
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           color: isSelected == index ? Colors.red: Colors.red.shade50,
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Text(name, style: TextStyle(color: Colors.white)),
//       ),
//     );
//   }
//
//   detail() => GridView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: Grapes.Nike.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, childAspectRatio: (50/ 50)),
//       itemBuilder: (context, index) {
//         final c = Grapes.Nike[index];
//         return Cardss(Products: c);  // ✅ RETURNING Cardss
//       });
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Our Products",style:  TextStyle( color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: [
//              myCustomWidget("bhanu",0),
//              myCustomWidget("prasad",1),
//              myCustomWidget("yeligeti",2),
//            ],
//          ),
//           Expanded(child: isSelected==0?detail():isSelected==1?detail():Text("hello"))
//
//
//
//         ],
//       ),
//     );
//   }
// }
