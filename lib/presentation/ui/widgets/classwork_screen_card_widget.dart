import 'package:class_management_app/presentation/ui/screens/create_classwork-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/create_course_screen.dart';



class ClassworkScreenCardWidget extends StatefulWidget {
  const ClassworkScreenCardWidget({
    super.key, required this.cardColors,
  });
  final Color cardColors;

  @override
  State<ClassworkScreenCardWidget> createState() => _ClassworkScreenCardWidgetState();
}

class _ClassworkScreenCardWidgetState extends State<ClassworkScreenCardWidget> {
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
                Text("Task type", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),),
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
                                  Get.to(()=> CreateClassWorkScreen(title: 'Edit Classwork', buttonText: 'Edit',));
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
            Text("Task title", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),),
            SizedBox(height: 10,),
            Text("Description",style: TextStyle(color: Colors.white, fontSize: 16),),
            SizedBox(height: 10,),
            Text("Group : 5", style: TextStyle(color: Colors.white, fontSize: 15),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Date", style: TextStyle(color: Colors.white, fontSize: 15),),
                Text("Time",  style: TextStyle(color: Colors.white, fontSize: 15),),
                Text("Mode",  style: TextStyle(color: Colors.white, fontSize: 15),),
              ],
            )

          ],
        ),
      ),
    );
  }
}