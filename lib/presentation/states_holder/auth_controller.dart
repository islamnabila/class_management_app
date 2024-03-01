import 'dart:convert';
import 'package:class_management_app/data/models/user_model.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  static String? token;
  static UserModel? user;
  
  Future<void> saveUserDetails(String t, UserModel model)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("token", t);
    await sharedPreferences.setString("user", jsonEncode(model.toJson()));
    token =t;
    user = model;
  }

 static Future<void> initialize()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    token = sharedPreferences.getString("token");
    user = UserModel.fromJson(jsonDecode(sharedPreferences.getString("user") ?? "{}")) ;
  }

 static Future<bool> checkAuthState()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    token = sharedPreferences.getString("token");
    if(token != null){
      await initialize();
      return true;
    }else{
      return false;
    }
  }

  static Future<void> clearAuthData()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
    token =null;
  }

}
