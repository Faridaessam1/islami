import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/models/recent_card_data.dart';

class RecentCardWidget extends StatelessWidget{
  RecentData recentData;

  RecentCardWidget({
    super.key,
  required this.recentData,
  });


  @override
  Widget build(BuildContext context) {
   return Container(
     padding: EdgeInsets.all(10),
     decoration: BoxDecoration(
       color: AppColors.primaryColor,
       borderRadius: BorderRadius.circular(20.0),
     ),
     child: Row(
       children: [
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Text(recentData.suraNameEN,
             style: TextStyle(
               fontSize: 24,
               fontWeight: FontWeight.bold,
               color: AppColors.Black,
             ),
             ),
             Text(recentData.suraNameAR,
               style: TextStyle(
                 fontSize: 24,
                 fontWeight: FontWeight.bold,
                 color: AppColors.Black,
               ),
             ),
             Text("${recentData.suraVerses} Verses",
               style: TextStyle(
                 fontSize: 14,
                 fontWeight: FontWeight.bold,
                 color: AppColors.Black,
               ),
             ),
           ],
         ),
         Image.asset(AppAssets.recentImg),
       ],
     ),
   );
  }

}