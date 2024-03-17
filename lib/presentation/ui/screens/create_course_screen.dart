import 'package:flutter/material.dart';
import '../widgets/reuse_header_container.dart';

class CreateCourseScreen extends StatefulWidget {
  const CreateCourseScreen({super.key, required this.title, required this.buttonText});

  final String title;
  final String buttonText;
  @override
  State<CreateCourseScreen> createState() => _CreateCourseScreenState();
}

class _CreateCourseScreenState extends State<CreateCourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            ReuseHeaderContainer(
              title: widget!.title,
            ),
            SizedBox(height: 120,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Course Name"),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Course Code"),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Faculty Name"),
                  ),
                  SizedBox(height: 160,),
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
