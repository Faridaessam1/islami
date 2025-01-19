import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/models/sura_data.dart';

class SuraCardWidget extends StatelessWidget{
  SuraData suraData;

  SuraCardWidget({
    super.key,
    required this.suraData,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0 , vertical: 10),
      child: Row(
        children: [
          Container(
            width: 50,
             height: 50,
            decoration: BoxDecoration(
              image:DecorationImage(
                image:  AssetImage(
                    AppAssets.suraNumber,
                ),
              ),
            ),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal:19 , vertical: 10),
               child: Text(suraData.suraNumber,
                       style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: AppColors.white,
                       ),
               ),
             ),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(suraData.suraNameEN,
              style: TextStyle(
                fontSize:20 ,
                fontWeight:FontWeight.w700 ,
                color:AppColors.white ,
              ),
              ),
              SizedBox(height: 6,),
              Text(
               " ${suraData.suraVerses} Verses",
                style: TextStyle(
                  fontSize:14 ,
                  fontWeight:FontWeight.w700 ,
                  color:AppColors.white ,
                ),
              ),

            ],
          ),
          Spacer(),
          Text(suraData.suraNameAR,
            style: TextStyle(
              fontSize:20 ,
              fontWeight:FontWeight.w700 ,
              color:AppColors.white ,
            ),
          ),
        ],
      ),
    );
  }

}