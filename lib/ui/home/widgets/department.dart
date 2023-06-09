import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class Department extends StatelessWidget {
   Department({super.key, required this.title});

   final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: Center(child: Text(title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: AppColors.black),)),
    );
  }
}
