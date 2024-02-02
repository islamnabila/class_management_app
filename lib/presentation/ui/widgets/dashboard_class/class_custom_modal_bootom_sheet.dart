// import 'package:flutter/cupertino.dart';
//
// class ClassCustomModalBottomSheet extends StatelessWidget {
//   const ClassCustomModalBottomSheet({
//     super.key,
//     required this.icon1,
//     required this.text1,
//     required this.icon2,
//     required this.text2,
//   });
//   final IconData icon1;
//   final String text1;
//   final IconData icon2;
//   final String text2;
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         padding: EdgeInsets.only(
//           top: 20,
//           bottom: 20,
//           left: 20,
//         ),
//         child: Column(
//           children: [
//             GestureDetector(
//               onTap: (){
//                 print("ontap");
//               },
//               child: GestureDetector(
//                 onTap: (){},
//                 child: Row(
//                   children: [
//                     Icon(
//                       icon1,
//                       size: 20,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       text1,
//                       style: TextStyle(
//                         fontSize: 16,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 18,
//             ),
//             GestureDetector(
//               onTap: (){
//
//               },
//               child: Row(
//                 children: [
//                   Icon(
//                     icon2,
//                     size: 16,
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     text2,
//                     style: TextStyle(
//                       fontSize: 16,
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }