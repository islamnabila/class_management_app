import 'package:class_management_app/presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:class_management_app/presentation/ui/utility/style.dart';
import 'package:class_management_app/presentation/ui/widgets/create_classwork_floating_action_widget.dart';
import 'package:class_management_app/presentation/ui/widgets/dashboard_course/course_card_widget.dart';
import 'package:class_management_app/presentation/ui/widgets/classwork_screen_card_widget.dart';
import 'package:class_management_app/presentation/ui/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utility/app_colors.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/dashboard_class/create_class_floating_action_widget.dart';

class ClassworkScreen extends StatefulWidget {
  const ClassworkScreen({super.key});

  @override
  State<ClassworkScreen> createState() => _ClassworkScreenState();
}

class _ClassworkScreenState extends State<ClassworkScreen> {
  final List<Color> cardColors = [
    Colors.indigo,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {

    final List<Color> repeatedColors = List.generate(10,
          (index) => cardColors[index % cardColors.length],);

    return Scaffold(
      appBar: appBar,
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 3, left: 5, right: 5),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => MainBottomNavScreen());
                },
                child: ClassworkScreenCardWidget(
                  cardColors: repeatedColors[index % cardColors.length],
                ),
              ),
            );
          }),

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
                return CreateClassWorkFloatingActionWidget();
              });
        },
        child: Icon(Icons.add),
      ),
      drawer: CustomDrawer(),
    );
  }
}

