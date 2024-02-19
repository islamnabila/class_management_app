import 'package:class_management_app/presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:class_management_app/presentation/ui/utility/style.dart';
import 'package:class_management_app/presentation/ui/widgets/dashboard_course/course_card_widget.dart';
import 'package:class_management_app/presentation/ui/widgets/classwork_screen_card_widget.dart';
import 'package:class_management_app/presentation/ui/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/appbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      // body: ListView.builder(
      //     itemCount: 2,
      //     itemBuilder: (context, index) {
      //       return Padding(
      //         padding: const EdgeInsets.only(top: 3, left: 5, right: 5),
      //         child: GestureDetector(
      //           onTap: () {
      //             Get.to(() => MainBottomNavScreen());
      //           },
      //           child: ClassworkScreenCardWidget(
      //             cardColors: repeatedColors[index % cardColors.length],
      //           ),
      //         ),
      //       );
      //     }),

      drawer: CustomDrawer(),

    );
  }
}
