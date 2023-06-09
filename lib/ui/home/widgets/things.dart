import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';

class Things extends StatelessWidget {
  Things({super.key, required this.title, required this.richTitle, required this.richSubtitle, required this.img});

  final String title;
  final String richTitle;
  final String richSubtitle;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Image.asset(img,height: 300,),
          Text(title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700, color: AppColors.black),),
          RichText(text: TextSpan(text: richTitle, style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black87), children: [TextSpan(text: richSubtitle,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.red))]))
        ],
      ),
    );
  }
}
