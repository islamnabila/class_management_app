import 'package:class_management_app/presentation/ui/screens/auth/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/reuse_header_container.dart';
import 'otp_send_to_email_screen.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReuseHeaderContainer(
              title: 'Set Password',

            ),
            SizedBox(height: 170,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Confirm Password"),
                  ),

                  SizedBox(height: 150,),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(onPressed: (){
                      Get.to(()=>SignUpScreen());
                    }, child: Text("Confirm", style: TextStyle(fontSize: 16),),),),

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
