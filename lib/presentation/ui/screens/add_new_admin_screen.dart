import 'package:class_management_app/presentation/ui/screens/admin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/reuse_header_container.dart';

class AddNewAdminScreen extends StatefulWidget {
  const AddNewAdminScreen({super.key, required this.title});
  final String title;

  @override
  State<AddNewAdminScreen> createState() => _AddNewAdminScreenState();
}

class _AddNewAdminScreenState extends State<AddNewAdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReuseHeaderContainer(
              title: widget.title,
            ),
            SizedBox(height: 170,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Select user",suffixIcon: Icon(Icons.arrow_drop_down)),
                  ),
                  SizedBox(height: 220,),
                  SizedBox(
                    height: 45,
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Get.to(()=> AdminScreen());
                      }, child: Text("Add Admin", style: TextStyle(fontSize: 16),)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
