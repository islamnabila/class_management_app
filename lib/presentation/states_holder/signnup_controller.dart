import 'package:class_management_app/data/models/signup_params.dart';
import 'package:class_management_app/data/services/network_caller.dart';
import 'package:get/get.dart';

import '../../data/models/user_model.dart';
import '../../data/utility/urls.dart';
import 'auth_controller.dart';


class SignupController extends GetxController{
  bool _inProgress = false;
  bool get inProgress => _inProgress;

  String _errorMessage = "";
  String get errorMessage =>_errorMessage;

  // UserModel _userModel= UserModel();
  // UserModel get userModel => _userModel;
  Future<bool> signUp(SignupParams params)async{

    _inProgress =true;
    update();


    final response = await NetworkCaller().postRequest(Urls.signup, body: params.toJson(),);
    _inProgress = false;

    if(response.isSuccess){
      // await Future.delayed(const Duration(seconds: 3));
      // _userModel = UserModel.fromJson(response.responseData["data"]?? {});
      // await Get.find<AuthController>().saveUserDetails(response.responseData["accessToken"], _userModel);
      update();
      return true;
    }else{
      _errorMessage = response.errorMessage;
      update();
      return false;
    }
  }


}