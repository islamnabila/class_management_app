import 'package:flutter/material.dart';

import '../utility/style.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Admin List", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("UserId", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("Name", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("Email", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 20,),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      height: 40,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("656552", style: TextStyle(fontSize: 20,),),
                              Text("Nabila", style: TextStyle(fontSize: 20,),),
                              Text("nabila@gmail.com", style: TextStyle(fontSize: 20,),)
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
