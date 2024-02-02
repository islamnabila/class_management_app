import 'package:class_management_app/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/dashboard_class/class_card_widget.dart';


class CourseDashBoardScreen extends StatefulWidget {
  const CourseDashBoardScreen({super.key});

  @override
  State<CourseDashBoardScreen> createState() => _CourseDashBoardScreenState();
}

class _CourseDashBoardScreenState extends State<CourseDashBoardScreen> {
  final List<Color> cardColors = [
    Colors.indigo,
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
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget()),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 3, left: 5, right: 5),
              child: GestureDetector(
                onTap: (){

                },
                child: ClassCardWidget(
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
                            print("ontap");
                          },
                          child: GestureDetector(
                            onTap: (){},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add_circle,
                                  size: 20,
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
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_add_alt_1,
                                size: 16,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Join class",
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


