import 'package:class_management_app/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/reuse_header_container.dart';

class CreateClassWorkScreen extends StatefulWidget {
  const CreateClassWorkScreen({super.key, required this.title, required this.buttonText});

  final String title;
  final String buttonText;
  @override
  State<CreateClassWorkScreen> createState() => _CreateClassWorkScreenState();
}

class _CreateClassWorkScreenState extends State<CreateClassWorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            ReuseHeaderContainer(
              title: widget!.title,
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Task type"),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Task title"),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(hintText: "Description"),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Group"),
                  ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          child: ElevatedButton(onPressed: (){}, child: Text("Date", style: TextStyle(fontSize: 15),),),
                      ),
                      SizedBox(
                        child: ElevatedButton(onPressed: (){}, child: Text("Time", style: TextStyle(fontSize: 15),),),
                      ),
                      SizedBox(
                        child: ElevatedButton(onPressed: (){}, child: Text("Mode", style: TextStyle(fontSize: 15),),),
                      ),

                    ],
                  ),
                  SizedBox(height: 90,),
                  SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(onPressed: (){}, child: Text(widget!.buttonText))),
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
