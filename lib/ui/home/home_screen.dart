import 'package:flutter/material.dart';
import 'package:n8_default_project/ui/home/widgets/department.dart';
import 'package:n8_default_project/ui/home/widgets/things.dart';
import 'package:n8_default_project/utils/colors.dart';
import 'package:n8_default_project/utils/icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text("Product",style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24, color: AppColors.white),)),
        toolbarHeight: 70,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
           Container(
             height: 50,
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: [
                 Department(title: "Maishiy\nTexnika"),
                 SizedBox(width: width*(10/375),),
                 Department(title: "Uy ro'zg'or\nbuyumlari"),
                 SizedBox(width: width*(10/375),),
                 Container(
                   height: 45,
                   width: 110,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.pinkAccent,
                   ),
                   child: Center(child: Text("Elektronika",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15,color: AppColors.black),)),
                 ),
                 SizedBox(width: width*(10/375),),
                 Department(title: "Konstovar"),
               ],
             ),
           ),
            SizedBox(height: height*(10/812),),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [Column(
                  children: [
                    Things(title: "Kir yuvish vositasi", richTitle: "80000.0 ", richSubtitle: "so'm", img: AppImages.zeleniyChay),
                    SizedBox(height: height*(10/812),),
                    Things(title: "Colgate", richTitle: "12000.0 ", richSubtitle: "so'm", img: AppImages.colgate),
                    SizedBox(height: height*(10/812),),
                    Things(title: "Power Bank", richTitle: "50000.0 ", richSubtitle: "so'm", img: AppImages.powerBank),
                    SizedBox(height: height*(10/812),),
                    Things(title: "Acer", richTitle: "7000000.0 ", richSubtitle: "so'm", img: AppImages.acer),
                    SizedBox(height: height*(10/812),),
                    Things(title: "Airpods", richTitle: "150000.0 ", richSubtitle: "so'm", img: AppImages.airpods),
                    SizedBox(height: height*(10/812),),
                    Things(title: "Qalam", richTitle: "3000.0 ", richSubtitle: "so'm", img: AppImages.qalam),
                    SizedBox(height: height*(10/812),),
                    Things(title: "Redmi", richTitle: "2500000.0 ", richSubtitle: "so'm", img: AppImages.redmi),
                    SizedBox(height: height*(10/812),),
                    Things(title: "Ruchka", richTitle: "3000.0 ", richSubtitle: "so'm", img: AppImages.ruchka),
                    SizedBox(height: height*(10/812),),
                    Things(title: "Sovun", richTitle: "8000.0 ", richSubtitle: "so'm", img: AppImages.sovun),
                  ],
                ),]
              ),
            )
          ],
        ),
      ),
    );
  }
}
