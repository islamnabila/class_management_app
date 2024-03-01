import 'package:class_management_app/presentation/ui/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utility/app_colors.dart';


class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      body: AppBar(
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.menu), onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },);
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
      ),
      // drawer: Drawer(
      //   child: Container(
      //     height: double.infinity,
      //     child: ListView(
      //       padding: EdgeInsets.zero,
      //       children: [
      //         DrawerHeader(
      //           decoration: BoxDecoration(
      //               image: DecorationImage(
      //                   image: NetworkImage(
      //                     "https://img.freepik.com/premium-photo/blue-white-background-with-blue-background-that-says-i-love-you_873925-19318.jpg",
      //                   ),
      //                   fit: BoxFit.cover)),
      //           child: Container(
      //             margin: EdgeInsets.only(top: 80),
      //             child: Text(
      //               "To-Do List",
      //               style: TextStyle(
      //                   fontSize: 30,
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.bold),
      //             ),
      //           ),
      //         ),
      //         ListTile(
      //           leading: Icon(
      //             Icons.add_circle,
      //             color: Colors.yellow.shade700,
      //           ),
      //           title: Text(
      //             "Upgrade to PRO",
      //             style: TextStyle(fontSize: 16),
      //           ),
      //         ),
      //         ListTile(
      //           leading: Icon(
      //             Icons.star,
      //             color: Colors.blue.shade300,
      //           ),
      //           title: Text(
      //             "Star Tasks",
      //             style: TextStyle(fontSize: 16),
      //           ),
      //         ),
      //         ListTile(
      //           leading: Icon(
      //             Icons.dashboard_rounded,
      //             color: Colors.blue.shade300,
      //           ),
      //           title: Text(
      //             "Category",
      //             style: TextStyle(fontSize: 16),
      //           ),
      //
      //         ),
      //         ListTile(
      //           leading: Icon(
      //             Icons.abc_sharp,
      //             color: Colors.blue.shade300,
      //           ),
      //           title: Text(
      //             "Theme",
      //             style: TextStyle(fontSize: 16),
      //           ),
      //         ),
      //         ListTile(
      //           leading: Icon(
      //             Icons.favorite,
      //             color: Colors.blue.shade300,
      //           ),
      //           title: Text(
      //             "Favourite",
      //             style: TextStyle(fontSize: 16),
      //           ),
      //         ),
      //         ListTile(
      //           leading: Icon(
      //             Icons.edit_note_outlined,
      //             color: Colors.blue.shade300,
      //           ),
      //           title: Text(
      //             "Feedback",
      //             style: TextStyle(fontSize: 16),
      //           ),
      //         ),
      //         ListTile(
      //           leading: Icon(
      //             Icons.back_hand,
      //             color: Colors.blue.shade300,
      //           ),
      //           title: Text(
      //             "FAQ",
      //             style: TextStyle(fontSize: 16),
      //           ),
      //         ),
      //         ListTile(
      //           leading: Icon(
      //             Icons.settings,
      //             color: Colors.blue.shade300,
      //           ),
      //           title: Text(
      //             "Settings",
      //             style: TextStyle(fontSize: 16),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://img.freepik.com/premium-photo/blue-white-background-with-blue-background-that-says-i-love-you_873925-19318.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 80),
                child: Text(
                  "To-Do List",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.add_circle,
                color: Colors.yellow.shade700,
              ),
              title: Text(
                "Upgrade to PRO",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.star,
                color: Colors.blue.shade300,
              ),
              title: Text(
                "Star Tasks",
                style: TextStyle(fontSize: 16),
              ),
              // Other list items...
            ),
          ],
        ),
      ),
    );
  }
}