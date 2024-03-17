import 'package:class_management_app/presentation/ui/screens/account.dart';
import 'package:class_management_app/presentation/ui/screens/profile.dart';
import 'package:class_management_app/presentation/ui/utility/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings", style: TextStyle(fontSize: 20),),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Personal information", style: TextStyle(fontSize: 16, color: AppColors.primaryColor, fontWeight: FontWeight.w500),),
              SizedBox(height: 25,),
              GestureDetector(
                onTap: (){
                  Get.to(()=> ProfileScreen());
                },
                child: Row(
                  children: [
                    Expanded(child: Text("Profile", style: TextStyle(fontSize: 18, ),)),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Get.to(()=>AccountScreen());
                },
                child: Row(
                  children: [
                    Expanded(child: Text("Account", style: TextStyle(fontSize: 18, ),)),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                  onTap: (){},
                  child: Text("Privacy", style: TextStyle(fontSize: 18, ),)),
              SizedBox(height: 14,),
              Divider(
                color: Colors.grey,
                height: 1,
              ),
              SizedBox(height: 14,),
              Text("Invite Codes", style: TextStyle(fontSize: 16, color: AppColors.primaryColor, fontWeight: FontWeight.w500),),
              SizedBox(height: 25,),
              Row(
                children: [
                  Text("Class Code: ", style: TextStyle(fontSize: 18, ),),
                  Text("aiASK68", style: TextStyle(fontSize: 18, ),),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Invitation Link : ", style: TextStyle(fontSize: 18, ),),
                  SizedBox(height: 8,),
                  Text("https//classroom.google.com/GSHJhisj",style: TextStyle(fontSize: 18, ),)
                ],
              ),
              SizedBox(height: 16,),
              Divider(
                color: Colors.grey,
                height: 1,
              ),
              SizedBox(height: 17,),
              Text("NOTIFICATION", style: TextStyle(fontSize: 16, color: AppColors.primaryColor, fontWeight: FontWeight.w500),),
              SizedBox(height: 25,),
              InkWell(
                  onTap: (){},
                  child: Text("Notifications", style: TextStyle(fontSize: 18, ),)),
              SizedBox(height: 14,),
              Divider(
                color: Colors.grey,
                height: 1,
              ),
              SizedBox(height: 14,),
              Text("Support", style: TextStyle(fontSize: 16, color: AppColors.primaryColor, fontWeight: FontWeight.w500),),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Version", style: TextStyle(fontSize: 18, ),),
                  Text("7.23.26", style: TextStyle(fontSize: 18,color: AppColors.primaryColor ),),
                ],
              ),
              SizedBox(height: 20,),
              InkWell(
                  onTap: (){},
                  child: Text("Privacy Policy", style: TextStyle(fontSize: 18, ),)),
              SizedBox(height: 20,),
              InkWell(
                  onTap: (){},
                  child: Text("Terms of Service ", style: TextStyle(fontSize: 18, ),)),
              SizedBox(height: 25,),
              SizedBox(
                width: double.infinity,
                  height: 45,
                  child: ElevatedButton(onPressed: (){}, child: Text("Sign out", style: TextStyle(fontSize: 16),)))
            ],
          ),
        ),
      ),
    );
  }
}
