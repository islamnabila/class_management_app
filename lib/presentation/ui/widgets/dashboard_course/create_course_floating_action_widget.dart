import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../screens/create_course_screen.dart';

class CreateCourseFloatingActionWidget extends StatelessWidget {
  const CreateCourseFloatingActionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 20,
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Get.to(()=>CreateCourseScreen(title: "Create Course", buttonText: "Create"));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.add_circle,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Create Course",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}