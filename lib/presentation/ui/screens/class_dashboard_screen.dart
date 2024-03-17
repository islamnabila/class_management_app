import 'package:class_management_app/data/models/class.dart';
import 'package:class_management_app/presentation/states_holder/count_student_controller.dart';
import 'package:class_management_app/presentation/states_holder/fetch_class_controller.dart';
import 'package:class_management_app/presentation/ui/screens/course_dashboard_screen.dart';
import 'package:class_management_app/presentation/ui/utility/app_colors.dart';
import 'package:class_management_app/presentation/ui/utility/style.dart';
import 'package:class_management_app/presentation/ui/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/dashboard_class/class_card_widget.dart';
import '../widgets/dashboard_class/create_class_floating_action_widget.dart';


class ClassDashBoardScreen extends StatefulWidget {
  const ClassDashBoardScreen({super.key});
  // final Class classData;

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
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.find<FetchClassController>().getClassList();

    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Color> repeatedColors = List.generate(
      10,
      (index) => cardColors[index % cardColors.length],
    );
    return Scaffold(
      appBar: appBar,
      body : RefreshIndicator(
        onRefresh: ()async {
         await Get.find<FetchClassController>().getClassList();
        },
        child: GetBuilder<FetchClassController>(
          builder: (fetchClassController) {
            if(fetchClassController.inProgress){
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Visibility(
              visible: fetchClassController.classListModel.classList?.isNotEmpty ?? false,
              replacement:const Center(
                child: Text("Class are not available")
              ),
              child: ListView.builder(
                            itemCount: fetchClassController.classListModel.classList?.length ?? 0,
                            shrinkWrap: true,
                            primary: false,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 3, left: 5, right: 5),
                                child: GestureDetector(
                                  onTap: (){
                                    Get.to(()=>CourseDashBoardScreen());
                                  },
                                  child: ClassCardWidget(
                                    cardColors: repeatedColors[index % cardColors.length],
                                    classData: fetchClassController.classListModel.classList![index],
                                    countStudent: Get.find<CountStudentController>().countStudentNumberModel.totalStudent,
                                  ),
                                ),
                              );
                            }
                            ),
            );
          }
        ),
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
                return CreateClassFloatingActionWidget();
              });
        },
        child: Icon(Icons.add),
      ),
      drawer: CustomDrawer(),
    );
  }
}




