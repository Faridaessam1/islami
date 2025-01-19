

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';

class AzkarWidget extends StatelessWidget {
  String azkarType;
  AzkarWidget({
    required this.azkarType,
});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height * 0.26,

        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.azkar1)),
          color:AppColors.secondryColor.withOpacity(0.2),
          border: Border.fromBorderSide(BorderSide(
            color:AppColors.primaryColor ,
            width: 2,
          ),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:9,),
          child: Align(
            alignment:Alignment.bottomCenter,
            child: Text(azkarType,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 17,
                fontWeight: FontWeight.w700,
                fontFamily: "Janna",
              ),
            ),
          ),
        ),
      ),
    );
  }
}