import 'package:class_management_app/presentation/ui/screens/create_class_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/create_course_screen.dart';


class CourseCardWidget extends StatefulWidget {
  const CourseCardWidget({
    super.key, required this.cardColors,
  });
  final Color cardColors;

  @override
  State<CourseCardWidget> createState() => _CourseCardWidgetState();
}

class _CourseCardWidgetState extends State<CourseCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.cardColors,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Pervasive Computing", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),),
                IconButton(onPressed: (){
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
                    ),
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context){
                      return SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 24,
                            bottom: 24,
                            left: 24,
                          ),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Get.to(()=> CreateCourseScreen(title: 'Edit Course', buttonText: 'Edit',));
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.update,
                                      size: 22,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Edit",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              GestureDetector(
                                onTap: (){

                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.delete,
                                      size: 22,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Delete",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                    icon: Icon(Icons.more_vert, color: Colors.white,))
              ],
            ),
            Text("Course Code : CSE453", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),),
            SizedBox(height: 10,),
            Text("Faculty Name : Asaduzzaman(AA)",style: TextStyle(color: Colors.white, fontSize: 15),),

          ],
        ),
      ),
    );
  }
}