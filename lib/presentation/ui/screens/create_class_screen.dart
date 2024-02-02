import 'package:class_management_app/presentation/ui/utility/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/reuse_header_container.dart';

class CreateClassScreen extends StatefulWidget {
  const CreateClassScreen({super.key, required this.title, required this.buttonText});

  final String title;
  final String buttonText;
  @override
  State<CreateClassScreen> createState() => _CreateClassScreenState();
}

class _CreateClassScreenState extends State<CreateClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            ReuseHeaderContainer(
              title: widget!.title,
            ),
            SizedBox(height: 120,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Class Id"),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Class Name"),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Section"),
                  ),
                  SizedBox(height: 160,),
                  SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(onPressed: (){}, child: Text(widget!.buttonText))),
                  SizedBox(height: 30,),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
