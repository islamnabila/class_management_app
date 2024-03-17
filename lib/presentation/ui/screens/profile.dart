import 'package:class_management_app/presentation/states_holder/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String dropdownValue = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(fontSize: 20),),
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
              Text("Profile", style: TextStyle(fontSize: 18),),
              SizedBox(height: 20,),
              Stack(
                children: [
                  ClipOval(child: Image.asset("assets/images/profile.jpg",height: 80, width: 80,)),
                  Positioned(
                    bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 16,
                          backgroundColor: Colors.white,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt, size: 18, color: Colors.grey.shade600,))))
                ],
              ),
              SizedBox(height: 20,),
              Text("Name", style: TextStyle(fontSize: 18),),
              SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(hintText: "Nabila Islam"),
              ),
              SizedBox(height: 24,),
              Text("Introduction", style: TextStyle(fontSize: 18),),
              SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(hintText: "Please introduce yourself"),
              ),
              SizedBox(height: 40,),
              Text("Personal Info", style: TextStyle(fontSize: 18),),
              SizedBox(height: 30,),
              Text("Birthday", style: TextStyle(fontSize: 18),),
              SizedBox(height: 8),
             OutlinedButton(onPressed: (){}, child: Text("Choose Date")),
              SizedBox(height: 16),
              Text("Gender", style: TextStyle(fontSize: 18),),
              DropdownButton(
                value: dropdownValue,
                  items: [
                    DropdownMenuItem(
                      value: "Male",
                        child: Text("Male")),
                    DropdownMenuItem(
                        value: "Female",
                        child: Text("Female")),
                  ],
                  onChanged: (String? newValue){
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  }),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                  height: 45,
                  child: ElevatedButton(onPressed: (){}, child: Text("Save", style: TextStyle(fontSize: 15),)))
            ],
          ),
        ),
      ),
    );
  }
}
