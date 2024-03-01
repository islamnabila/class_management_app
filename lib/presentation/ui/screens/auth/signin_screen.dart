import 'package:class_management_app/presentation/states_holder/signin_controller.dart';
import 'package:class_management_app/presentation/ui/screens/auth/otp_send_to_email_screen.dart';
import 'package:class_management_app/presentation/ui/screens/auth/signup_screen.dart';
import 'package:class_management_app/presentation/ui/screens/class_dashboard_screen.dart';
import 'package:class_management_app/presentation/ui/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/reuse_header_container.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReuseHeaderContainer(
              title: 'Welcome!',
              subtitle: "Sign in and get started",
            ),
            SizedBox(
              height: 150,
            ),
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
                          return "Enter your userId";
                        }else{
                          return null;
                        }
                      }
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(hintText: "Password"),
                      validator: (String? value){
                        if(value?.isEmpty ?? true){
                          return "Enter your password";
                        }else{
                          return null;
                        }
                      }
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(() => OTPSendToEmailScreen());
                        },
                        child: Text("Foget password")),
                    SizedBox(
                      height: 130,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: GetBuilder<SigninController>(
                          builder: (signInControoller) {
                        return Visibility(
                          visible: signInControoller.inProgress == false,
                          replacement: const Center(
                            child: CircularProgressIndicator(),
                          ),
                          child: ElevatedButton(
                            onPressed: () async{
                              if(_formKey.currentState!.validate()){
                                final bool result =await signInControoller.signIn(
                                    _userIdController.text.trim(),
                                    _passwordController.text.trim(),);
                                if(result){
                                  Get.to(()=>ClassDashBoardScreen());
                                }
                                  else {
                                    snackBarMessage(context, "Login failed");
                                  }
                                }


                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        );
                      }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 16),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.to(() => SignUpScreen());
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(fontSize: 16),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
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
    _passwordController.dispose();
    super.dispose();
  }
}
