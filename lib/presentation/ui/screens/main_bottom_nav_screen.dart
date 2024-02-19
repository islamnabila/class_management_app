import 'package:class_management_app/presentation/states_holder/main_bottom_nav_controller.dart';
import 'package:class_management_app/presentation/ui/screens/settings_screen.dart';
import 'package:class_management_app/presentation/ui/screens/classwork_screen.dart';
import 'package:class_management_app/presentation/ui/screens/notice_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../utility/app_colors.dart';
import 'home_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

  final List<Widget> _screens =const[
    HomeScreen(),
    ClassworkScreen(),
    NoticeScreen(),
    SettingScreen(),
  ];
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
      builder: (mainBottomNavController) {
        return Scaffold(
          body:_screens[mainBottomNavController.currentIndex],
          bottomNavigationBar : BottomNavigationBar(
            currentIndex: mainBottomNavController.currentIndex,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: mainBottomNavController.changeIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.event_note_outlined), label: "Classwork"),
              BottomNavigationBarItem(icon: Icon(Icons.note_alt), label: "Notice"),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting")
            ],

          ),
        );
      }
    );
  }
}


