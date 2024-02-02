import 'package:class_management_app/presentation/ui/screens/course_dashboard_screen.dart';
import 'package:class_management_app/presentation/ui/screens/create_class_screen.dart';
import 'package:class_management_app/presentation/ui/screens/join_class_screen.dart';
import 'package:class_management_app/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/dashboard_class/class_card_widget.dart';


class ClassDashBoardScreen extends StatefulWidget {
  const ClassDashBoardScreen({super.key});

  @override
  State<ClassDashBoardScreen> createState() => _ClassDashBoardScreenState();
}

class _ClassDashBoardScreenState extends State<ClassDashBoardScreen> {
  final List<Color> cardColors = [
    Colors.pink,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    final List<Color> repeatedColors = List.generate(
      10,
      (index) => cardColors[index % cardColors.length],
    );
    return Scaffold(
      body : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: AppColors.primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.menu, size: 20, color: Colors.white,)),
                        Text("Class Management", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: CircleAvatar(
                          child:Icon(Icons.person)
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 3, left: 5, right: 5),
                      child: GestureDetector(
                        onTap: (){
                          Get.to(()=>CourseDashBoardScreen());
                        },
                        child: ClassCardWidget(
                          cardColors: repeatedColors[index % cardColors.length],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
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
                            Get.to(()=>CreateClassScreen(title: 'Create Class', buttonText: 'Create',));
                          },
                          child: Row(
                            children: [
                              Icon(
                               Icons.add_circle,
                                size: 22,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                               "Create Class",
                                style: TextStyle(
                                  fontSize: 16,
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
                            Get.to(()=> JoinClassScreen());
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_add_alt_1,
                                size: 22,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Join Class",
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
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


