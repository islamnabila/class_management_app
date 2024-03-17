import 'package:class_management_app/presentation/ui/screens/create_class_screen.dart';
import 'package:class_management_app/presentation/ui/screens/create_notice_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NoticeScreenCardWidget extends StatefulWidget {
  const NoticeScreenCardWidget({
    super.key, required this.cardColors,
  });
  final Color cardColors;

  @override
  State<NoticeScreenCardWidget> createState() => _NoticeScreenCardWidgetState();
}

class _NoticeScreenCardWidgetState extends State<NoticeScreenCardWidget> {
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
                Text("Notice Description", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),),
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
                                  Get.to(()=> CreateNoticeScreen(title: 'Edit Notice', buttonText: 'Edit',));
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


          ],
        ),
      ),
    );
  }
}