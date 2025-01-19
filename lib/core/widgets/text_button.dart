import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/app_colors.dart';

class TextButtonWidget extends StatelessWidget{
  String text;
  VoidCallback  onpress;
  TextButtonWidget({
    super.key,
    required this.text,
    required this.onpress,
  });


  @override
  Widget build(BuildContext context) {
    return  TextButton(
        onPressed: onpress,
        child: Text(text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryColor,
          ),
        )
    );
  }

}