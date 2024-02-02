import 'package:class_management_app/presentation/ui/screens/auth/otp_send_to_email_screen.dart';
import 'package:class_management_app/presentation/ui/screens/auth/signup_screen.dart';
import 'package:class_management_app/presentation/ui/screens/class_dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/reuse_header_container.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
            SizedBox(height: 150,),
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
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  TextButton(onPressed: (){
                    Get.to(()=> OTPSendToEmailScreen());
                  }, child: Text("Foget password")),
                  SizedBox(height: 130,),
                  SizedBox(
                    width: double.infinity,
                      height: 45,
                      child: ElevatedButton(onPressed: (){
                        Get.to(()=>ClassDashBoardScreen());
                      }, child: Text("Sign In", style: TextStyle(fontSize: 16),),),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?", style: TextStyle(fontSize: 16),),
                      TextButton(onPressed: (){
                        Get.to(()=> SignUpScreen());
                      }, child: Text("Sign Up",style: TextStyle(fontSize: 16),))
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
