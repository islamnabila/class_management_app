import 'package:class_management_app/presentation/states_holder/auth_controller.dart';
import 'package:class_management_app/presentation/ui/screens/auth/signin_screen.dart';
import 'package:class_management_app/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatefulWidget {
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25))
      ),
      child: Container(
        height: double.infinity,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
               color: AppColors.primaryColor,
              ),
              child: Container(
                margin: EdgeInsets.only(top: 80),
                child: Text(
                  "Class Navigator",
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
                Icons.calendar_month,
                color: AppColors.primaryColor
              ),
              title: Text(
                "Calender",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_active,
                color: Colors.amber,
              ),
              title: Text(
                "Notification",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.abc_sharp,
                color:  AppColors.primaryColor,
              ),
              title: Text(
                "Theme",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color:  AppColors.primaryColor,
              ),
              title: Text(
                "Favourite",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.edit_note_outlined,
                color:  AppColors.primaryColor,
              ),
              title: Text(
                "Feedback",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color:  AppColors.primaryColor,
              ),
              title: Text(
                "FAQ",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.roundabout_left,
                color:  AppColors.primaryColor,
              ),
              title: Text(
                "About",
                style: TextStyle(fontSize: 16),
              ),
            ),
            GestureDetector(
              onTap: ()async{
                await AuthController.clearAuthData();
                if(mounted){
                  Get.offAll(()=>const SignInScreen());
                }

              },
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color:  AppColors.primaryColor,
                ),
                title: Text(
                  "Log out",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
