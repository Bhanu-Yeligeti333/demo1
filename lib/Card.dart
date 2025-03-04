// import 'package:flutter/material.dart';
// import 'Product.dart';
//
// class Cardss extends StatefulWidget {
//   final Product Products;
//   const Cardss({super.key, required this.Products});
//
//   @override
//   State<Cardss> createState() => _CardssState();
// }
//
// class _CardssState extends State<Cardss> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       padding: EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         color: Colors.grey,
//       ),
//       child: Column(
//         children: [
//           Text(widget.Products.id.toString()),  // ✅ Convert id to String
//           Text(widget.Products.cost.toString()), // ✅ Display cost
//           Text(widget.Products.age.toString()),  // ✅ Display age
//         ],
//       ),
//     );
//   }
// }
