import 'package:class_management_app/data/models/signup_params.dart';
import 'package:class_management_app/presentation/states_holder/signnup_controller.dart';
import 'package:class_management_app/presentation/ui/screens/auth/signin_screen.dart';
import 'package:class_management_app/presentation/ui/widgets/snackbar.dart';
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

  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _sectionController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _userIdController,
                      decoration: InputDecoration(hintText: "Student ID"),
                      validator: (String? value){
                        if(value?.trim().isEmpty ?? true){
                          return "Enter your id";
                        }else{
                          return null;
                        }
                    }
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(hintText: "Full Name"),
                      validator: (String? value){
                        if(value?.trim().isEmpty ?? true){
                          return "Enter your full name";
                        }else{
                          return null;
                        }
                      }
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(hintText: "Email"),
                      validator: (String? value){
                        if(value?.trim().isEmpty ?? true){
                          return "Enter your email ";
                        }else{
                          return null;
                        }
                      }
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(hintText: "Password"),
                      validator: (String? value){
                        if(value?.isEmpty ?? true){
                          return " Enter password";
                        }else{
                          return null;
                        }
                      }
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: _sectionController,
                      decoration: InputDecoration(hintText: "Section"),
                      validator: (String? value){
                        if(value?.trim().isEmpty ?? true){
                          return "Enter your section";
                        }else{
                          return null;
                        }
                      }
                    ),
                    SizedBox(height: 90,),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: GetBuilder<SignupController>(
                        builder: (signupController) {
                          return Visibility(
                            visible: signupController.inProgress == false,
                            replacement:const Center(
                              child: CircularProgressIndicator(),
                            ),
                            child: ElevatedButton(
                              onPressed: ()async{
                              if(_formKey.currentState!.validate()){
                                final signupParams =  SignupParams(
                                    name: _nameController.text.trim(),
                                    email: _emailController.text.trim(),
                                    password: _passwordController.text,
                                    section: _sectionController.text.trim(),
                                    userId: _userIdController.text.trim()
                                );
                                final bool result = await signupController.signUp(signupParams);
                                if(result){
                                  snackBarMessage(context, "Your Account is Created. Please Signin.");
                                  print("success");
                                }
                                else{
                                  snackBarMessage(context, "User already exists");
                                  print("failed");
                                }
                              }
                            },

                              child: Text("Sign Up", style: TextStyle(fontSize: 16),),),
                          );
                        }
                      ),),
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
              ),
            )
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    _userIdController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _sectionController.dispose();
    super.dispose();
  }
}
