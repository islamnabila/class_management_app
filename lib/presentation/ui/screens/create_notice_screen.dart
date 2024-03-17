import 'package:class_management_app/presentation/ui/screens/auth/pin_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/reuse_header_container.dart';

class CreateNoticeScreen extends StatefulWidget {
  const CreateNoticeScreen({super.key, required this.title, required this.buttonText});
  final String title;
  final String buttonText;

  @override
  State<CreateNoticeScreen> createState() => _CreateNoticeScreenState();
}

class _CreateNoticeScreenState extends State<CreateNoticeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReuseHeaderContainer(
              title: widget.title,
            ),
            SizedBox(height: 110,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    maxLines:10,
                    decoration: InputDecoration(hintText: "Description"),
                  ),

                  SizedBox(height: 120,),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(onPressed: (){
                      Get.to(()=>PinVerificationScreen());
                    }, child: Text(widget.buttonText, style: TextStyle(fontSize: 16),),),),
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
