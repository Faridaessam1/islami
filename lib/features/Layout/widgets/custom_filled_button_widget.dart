import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/app_colors.dart';

class CustomFilledButtonWidget extends StatelessWidget{
  String type;

  CustomFilledButtonWidget({
    super.key,
    required this.type,

  });

  @override
  Widget build(BuildContext context) {
    return  FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.secondryColor.withOpacity(0.5),
        foregroundColor: AppColors.primaryColor,

        shape: RoundedRectangleBorder(borderRadius:
        BorderRadius.circular(10),
        ),
      ),
      onPressed: (){},
      child: Text(type,
        style: TextStyle(
          fontFamily: "Janna",
          fontWeight:FontWeight.w700 ,
          fontSize: 16,
          color: Colors.white
        ),
      ),
    );
  }

}