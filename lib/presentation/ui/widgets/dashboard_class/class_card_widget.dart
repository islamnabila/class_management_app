import 'package:class_management_app/data/models/class.dart';
import 'package:class_management_app/presentation/states_holder/delete_class_cotroller.dart';
import 'package:class_management_app/presentation/states_holder/fetch_class_controller.dart';
import 'package:class_management_app/presentation/states_holder/unenroll_class_container.dart';
import 'package:class_management_app/presentation/ui/screens/add_new_admin_screen.dart';
import 'package:class_management_app/presentation/ui/screens/create_class_screen.dart';
import 'package:get/get.dart';


class ClassCardWidget extends StatefulWidget {
  const ClassCardWidget({
    super.key, required this.cardColors, required this.classData,required this.countStudent
  });
  final Color cardColors;
  final Class classData;

  final int? countStudent;

  @override
  State<ClassCardWidget> createState() => _ClassCardWidgetState();
}

class _ClassCardWidgetState extends State<ClassCardWidget> {
  @override
  Widget build(BuildContext context) {
    // if (widget.classData == null) {
    //   // Handle the case when classData is null
    //   return SizedBox.shrink();
    // }
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
                Flexible(
                  child: Text(widget.classData.className ?? "",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),overflow: TextOverflow.ellipsis,),
                ),
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
                                Get.to(()=> CreateClassScreen(title: 'Edit Class', buttonText: 'Edit',));
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
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context){
                                      return deleteClass;
                                    });
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
                                  Expanded(
                                    child: Text(
                                      "Delete",
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
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context){
                                      return unenrollClass;
                                    });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.clear,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Unenroll",
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
                                Get.to(()=>AddNewAdminScreen(title: "Add New Admin"));
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
                                  Expanded(
                                    child: Text(
                                      "New Admin",
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
                  },
                  );
                },
                    icon: Icon(Icons.more_vert, color: Colors.white,))
              ],
            ),
            SizedBox(height: 10,),
            Text(widget.classData.section ?? "" , style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),),
            SizedBox(height: 20,),
            Text("Student number : ${widget.countStudent}",style: TextStyle(color: Colors.white, fontSize: 15),),

          ],
        ),
      ),
    );
  }
  AlertDialog get deleteClass{
    return AlertDialog(
      title: Text("Delete"),
      content: Text("Do you want to delete this class?"),
      actions: [
        TextButton(onPressed: (){
          Get.back();
        }, child: Text("Cancel")),
        TextButton(onPressed: (){
          Get.find<deleteClassController>().deleteClass(widget.classData.classId!);
          Get.find<FetchClassController>().classListModel.classList!.clear();
          Get.find<FetchClassController>().getClassList();
          Get.back();
        }, child: Text("Yes"))
      ],
    );
  }
  AlertDialog get unenrollClass{
    return AlertDialog(
      title: Text("Unenroll Class"),
      content: Text("Do you want to unenroll this class?"),
      actions: [
        TextButton(onPressed: (){
          Get.back();
        }, child: Text("Cancel")),
        TextButton(onPressed: (){
          Get.find<UnenrollClassController>().unenrollClass(widget.classData.classId!);
          Get.find<FetchClassController>().classListModel.classList!.clear();
          Get.find<FetchClassController>().getClassList();
          Get.back();
        }, child: Text("Yes"))
      ],
    );
  }
}