import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class CustomNavBarItem extends StatelessWidget{
  int selectedIndex;
  int navBarItem;
  String iconPath;

  CustomNavBarItem({
    super.key,
    required this.selectedIndex,
    required this.iconPath,
    required this.navBarItem,

  });



  @override
  Widget build(BuildContext context) {
   return Container(
     padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 8,),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),
       color: selectedIndex == navBarItem
           ? AppColors.secondryColor.withOpacity(
         0.5,
       ): Colors.transparent,
     ),
     child: ImageIcon(
       AssetImage(
        iconPath
       ),
     ),
   );
  }

}