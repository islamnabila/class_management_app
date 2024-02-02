import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/reuse_header_container.dart';

class JoinClassScreen extends StatefulWidget {
  const JoinClassScreen({super.key});

  @override
  State<JoinClassScreen> createState() => _JoinClassScreenState();
}

class _JoinClassScreenState extends State<JoinClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReuseHeaderContainer(
              title: 'Join Class!',
            ),
            SizedBox(height: 190,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Class Id"),
                  ),
                  SizedBox(height: 200,),
                  SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(onPressed: (){}, child: Text("Join"))),
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
