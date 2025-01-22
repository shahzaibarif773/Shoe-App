// import 'package:flutter/material.dart';
//
// Future<dynamic> CustomBottomSheet(BuildContext context) {
//   return showModalBottomSheet(context: context, builder: (builder){
//     shape : const RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(
//         top: Radius.circular(20),
//       ),
//     );
//     return Container(
//       //color: Colors.white12,
//       height: 250,
//       width: double.maxFinite,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text('Want to start work?',
//               style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900, color: Colors.white)),
//           const SizedBox(height: 30,),
//           ElevatedButton(
//               style: ButtonStyle(
//                   backgroundColor: WidgetStateProperty.all(Colors.blue)
//               ),
//               onPressed: ()=> Navigator.pushNamed(context, '/Payment_sc'),
//               child: const Text('  Start work  ',style: TextStyle(
//                   color : Colors.white,fontSize: 18,letterSpacing : 1,fontWeight: FontWeight.bold),))
//
//         ],
//       ),
//     );
//
//   });
// }
