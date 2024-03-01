import 'package:class_management_app/controller_binder.dart';
import 'package:class_management_app/presentation/ui/screens/auth/splash_screen.dart';
import 'package:class_management_app/presentation/ui/utility/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
   MyApp({super.key});
   static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigationKey,
      theme: AppThemeData.lightThemeData,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinder(),
    );
  }
}
