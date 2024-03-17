// import 'dart:convert';
// import 'dart:developer';
//
//
// import 'package:class_management_app/presentation/states_holder/auth_controller.dart';
// import 'package:http/http.dart';
//
// import '../models/response_data.dart';
//
// class NetworkCaller{
//   Future<ResponseData> postRequest(String url, {Map<String, dynamic>? body})async{
//     log(url);
//     log(body.toString());
//     final Response response = await post(Uri.parse(url), body: jsonEncode(body), headers: {
//       "Content-type":"application/json",
//       "token" : AuthController.token.toString(),
//     });
//     log(response.headers.toString());
//     log(response.statusCode.toString());
//     log(response.body.toString());
//
//     if(response.statusCode == 200){
//       final decodeResponse = jsonDecode(response.body);
//       if (decodeResponse["status"]== "fail") {
//         return ResponseData(
//             statusCode:response.statusCode ,
//             isSuccess: false ,
//             responseData:jsonDecode(response.body),
//             errorMessage: decodeResponse["data"] ?? "fail",
//         );
//       }else{
//         return ResponseData(
//           statusCode: 200,
//           isSuccess: true,
//           responseData: jsonDecode(response.body));
//     }
//
//
//     }else{
//       return ResponseData(
//           statusCode: response.statusCode,
//           isSuccess: false,
//           responseData: jsonDecode(response.body));
//     }
//
//   }
// }


import 'dart:convert';
import 'dart:developer';


import 'package:class_management_app/app.dart';
import 'package:class_management_app/presentation/ui/screens/auth/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../../presentation/states_holder/auth_controller.dart';
import '../models/response_data.dart';

class NetworkCaller {
  
  
  Future<ResponseData> postRequest(String url,
      {Map<String, dynamic>? body, bool isSignin = false}) async {
    log(url);
    log(body.toString());
    final Response response =
        await post(Uri.parse(url),
            body: jsonEncode(body),
            headers: <String, String>{
      "Content-type": "application/json",
      "token": AuthController.token.toString(),
    });
    log(response.headers.toString());
    log(response.statusCode.toString());
    log(response.body.toString());

    if (response.statusCode == 200) {
      final decodeResponse = jsonDecode(response.body);
      if (decodeResponse["status"] == "success") {
        return ResponseData(
          statusCode: response.statusCode,
          isSuccess: true,
          responseData: jsonDecode(response.body),
        );
      } else {
        if(isSignin ==false){
          backToSignIn();
        }
        return ResponseData(
            statusCode: response.statusCode,
            isSuccess: false,
            responseData: jsonDecode(response.body));
      }
    }else {
      return ResponseData(
          statusCode: response.statusCode,
          isSuccess: false,
          responseData: jsonDecode(response.body));
    }
  }


  // Future<ResponseData> postRequest(String url,
  //     {Map<String, dynamic>? body, bool isSignin = false}) async {
  //   try {
  //     log(url);
  //     log(body.toString());
  //     final Response response =
  //     await post(Uri.parse(url),
  //         body: jsonEncode(body),
  //         headers: <String, String>{
  //           "Content-type": "application/json",
  //           "token": AuthController.token.toString(),
  //         });
  //     log(response.headers.toString());
  //     log(response.statusCode.toString());
  //     log(response.body.toString());
  //     if (response.statusCode == 200) {
  //       return ResponseData(
  //           isSuccess: true,
  //           responseData: jsonDecode(response.body),
  //           statusCode: 200);
  //     } else if (response.statusCode == 401) {
  //       if (isSignin == false) {
  //         backToSignIn();
  //       }
  //       return ResponseData(
  //           isSuccess: false,
  //           statusCode: response.statusCode,
  //           responseData: jsonDecode(response.body));
  //     }
  //     else {
  //       return ResponseData(
  //           isSuccess: false,
  //           statusCode: response.statusCode,
  //           responseData: jsonDecode(response.body));
  //     }
  //   } catch(e) {
  //     return ResponseData(isSuccess: false, errorMessage: e.toString(), );
  //   }
  // }
  //
  //   Future<void> backToSignIn()async {
  //     await AuthController.clearAuthData();
  //     Navigator.pushAndRemoveUntil(
  //         MyApp.navigationKey.currentContext!, MaterialPageRoute(builder: (context)=>const SignInScreen()), (route) => false);
  //
  // }




  // Future<ResponseData> getRequest(String url, ) async {
  //   log(url);
  //
  //   final Response response =
  //   await post(Uri.parse(url) ,headers:<String, String> {
  //     "Content-type": "application/json",
  //     "token": AuthController.token.toString(),
  //   });
  //   log(response.headers.toString());
  //   log(response.statusCode.toString());
  //   log(response.body.toString());
  //
  //   if (response.statusCode == 200) {
  //     final decodeResponse = jsonDecode(response.body);
  //     if (decodeResponse["status"] == "success") {
  //       return ResponseData(
  //         statusCode: response.statusCode,
  //         isSuccess: true,
  //         responseData: jsonDecode(response.body),
  //       );
  //     } else {
  //       return ResponseData(
  //           statusCode: response.statusCode,
  //           isSuccess: false,
  //           responseData: jsonDecode(response.body));
  //     }
  //   }else {
  //     return ResponseData(
  //         statusCode: response.statusCode,
  //         isSuccess: false,
  //         responseData: jsonDecode(response.body));
  //   }
  // }


  Future<ResponseData> getRequest(String url) async {
    try {
      log(url);
      final Response response =
      await get(Uri.parse(url),
          headers: <String, String>{
            "Content-type": "Application/json",
            'token' : AuthController.token.toString(),

          });

      log(response.statusCode.toString());
      log(response.body.toString());
      if (response.statusCode == 200) {
        return ResponseData(
            isSuccess: true,
            responseData: jsonDecode(response.body),
            statusCode: 200);
      } else if(response.statusCode==401){
        backToSignIn();
        return ResponseData(
            isSuccess: false,
            statusCode: response.statusCode,
            responseData: jsonDecode(response.body));
      }
      else {
        return ResponseData(
            isSuccess: false,
            statusCode: response.statusCode,
            responseData: jsonDecode(response.body));
      }
    } catch (e) {
      print("Error: $e");
      throw e;
    }
  }

  Future<void> backToSignIn()async {
    await AuthController.clearAuthData();
    Navigator.pushAndRemoveUntil(
        MyApp.navigationKey.currentContext!, MaterialPageRoute(builder: (context)=>const SignInScreen()), (route) => false);

  }

}
