import 'package:class_management_app/presentation/states_holder/auth_controller.dart';
import 'package:class_management_app/presentation/states_holder/count_student_controller.dart';
import 'package:class_management_app/presentation/states_holder/create_class_controller.dart';
import 'package:class_management_app/presentation/states_holder/delete_class_cotroller.dart';
import 'package:class_management_app/presentation/states_holder/fetch_class_controller.dart';
import 'package:class_management_app/presentation/states_holder/main_bottom_nav_controller.dart';
import 'package:class_management_app/presentation/states_holder/signin_controller.dart';
import 'package:class_management_app/presentation/states_holder/signnup_controller.dart';
import 'package:class_management_app/presentation/states_holder/unenroll_class_container.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
    Get.put(SignupController());
    Get.put(SigninController());
    Get.put(AuthController());
    Get.put(CreateClassController());
    Get.put(FetchClassController());
    Get.put(deleteClassController());
    Get.put(UnenrollClassController());
    Get.put(CountStudentController());
  }
}