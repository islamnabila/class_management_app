import 'package:class_management_app/presentation/ui/screens/auth/pin_verification_screen.dart';
import 'package:class_management_app/presentation/ui/screens/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/reuse_header_container.dart';

class OTPSendToEmailScreen extends StatefulWidget {
  const OTPSendToEmailScreen({super.key});

  @override
  State<OTPSendToEmailScreen> createState() => _OTPSendToEmailScreenState();
}

class _OTPSendToEmailScreenState extends State<OTPSendToEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReuseHeaderContainer(
              title: 'Your Email Address!',
            ),
            SizedBox(height: 200,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Email"),
                  ),

                  SizedBox(height: 200,),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(onPressed: (){
                      Get.to(()=>PinVerificationScreen());
                    }, child: Text("Send", style: TextStyle(fontSize: 16),),),),
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
