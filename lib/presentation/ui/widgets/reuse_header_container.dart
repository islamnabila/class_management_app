import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utility/app_colors.dart';

class ReuseHeaderContainer extends StatelessWidget {
  const ReuseHeaderContainer({
    super.key,
    required this.title,
    this.subtitle,
  });

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.27,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(140))),
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 10,
            ),
            if( subtitle != null)
               Text(
                subtitle!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
          ],
        ),
      ),
    );
  }
}
