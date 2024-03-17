import 'package:class_management_app/presentation/ui/screens/create_notice_screen.dart';
import 'package:class_management_app/presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:class_management_app/presentation/ui/utility/style.dart';
import 'package:class_management_app/presentation/ui/widgets/dashboard_course/course_card_widget.dart';
import 'package:class_management_app/presentation/ui/widgets/classwork_screen_card_widget.dart';
import 'package:class_management_app/presentation/ui/widgets/drawer_widget.dart';
import 'package:class_management_app/presentation/ui/widgets/noice_screen_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utility/app_colors.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/dashboard_course/create_course_floating_action_widget.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({super.key});

  @override
  State<NoticeScreen> createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
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
                child: NoticeScreenCardWidget(
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
                return CreateNoticeScreen(title: 'Notice', buttonText: "Create",);
              });
        },
        child: Icon(Icons.add),
      ),
      drawer: CustomDrawer(),
    );
  }
}
