import 'package:class_management_app/data/models/fetch_class_list_model.dart';
import 'package:class_management_app/presentation/states_holder/auth_controller.dart';
import 'package:class_management_app/presentation/states_holder/fetch_class_controller.dart';
import 'package:class_management_app/presentation/ui/screens/auth/signin_screen.dart';
import 'package:class_management_app/presentation/ui/screens/class_dashboard_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/models/class.dart';
import '../../utility/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    MoveToNextScreen();
  }

  Future<void> MoveToNextScreen() async{
    final bool isLoggedIn = await AuthController.checkAuthState();
   await Future.delayed(Duration(seconds: 2));
   if(isLoggedIn){
     // ClassListModel classListModel = Get.find<FetchClassController>().classListModel;
     // // Assuming you want to get the first class from the list
     // Class classData = classListModel.classList?.first ?? Class();
     Get.offAll(()=> ClassDashBoardScreen());
   }else{
     Get.offAll(()=>SignInScreen());
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Class Management App", style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor
        ),),
      ),
    );
  }
}
