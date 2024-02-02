import 'package:class_management_app/controller_binder.dart';
import 'package:class_management_app/presentation/ui/screens/auth/splash_screen.dart';
import 'package:class_management_app/presentation/ui/utility/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppThemeData.lightThemeData,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinder(),
    );
  }
}
