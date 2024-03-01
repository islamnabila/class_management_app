


// AppBar get appbar {
//   return AppBar(
//     backgroundColor: AppColors.primaryColor,
//     automaticallyImplyLeading: false,
//     title: Row(
//       children: [
//         IconButton(
//             icon: Icon(Icons.menu), onPressed: () {  },),
//         SizedBox(width: 15,),
//         Text("Class Management", style: TextStyle(color: Colors.white),)
//       ],
//     ),
//     actions: [
//       Padding(
//         padding: const EdgeInsets.only(right: 20),
//         child: CircleAvatar(
//             child:Icon(Icons.person)
//         ),
//       )
//     ],
//     elevation: 0,
//   );
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/profile.dart';
import 'app_colors.dart';

AppBar get appBar{
  return AppBar(
    backgroundColor: AppColors.primaryColor,
    automaticallyImplyLeading: false,
    title: Row(
      children: [
        Builder(
            builder: (context) {
              return IconButton(
                  icon: Icon(Icons.menu), onPressed: () {
                Scaffold.of(context).openDrawer();
              }
              );
            }
        ),
        SizedBox(width: 15,),
        Text("Class Management", style: TextStyle(color: Colors.white),)
      ],
    ),
    actions: [
      GestureDetector(
        onTap: (){
          Get.to(()=> ProfileScreen());
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CircleAvatar(
              child:Icon(Icons.person)
          ),
        ),
      )
    ],
    elevation: 0,
  );
}