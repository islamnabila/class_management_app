import 'package:class_management_app/presentation/ui/screens/auth/signin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/reuse_header_container.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReuseHeaderContainer(
              title: 'New Account!',
              subtitle: "Sign up and get started",
            ),
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Student ID"),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Full Name"),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Section"),
                  ),
                  SizedBox(height: 90,),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(onPressed: (){

                    }, child: Text("Sign Up", style: TextStyle(fontSize: 16),),),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?", style: TextStyle(fontSize: 16),),
                      TextButton(onPressed: (){
                        Get.to(()=>SignInScreen());
                      }, child: Text("Sign In",style: TextStyle(fontSize: 16),))
                    ],
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
