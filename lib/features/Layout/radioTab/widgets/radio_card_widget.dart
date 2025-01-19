import 'package:flutter/material.dart';
import 'package:islami_app/models/radio_card_data.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';

class RadioCardWidget extends StatelessWidget{
  RadioCardData radioCardData;

  RadioCardWidget({
    super.key,
    required this.radioCardData
  });

  @override
  Widget build(BuildContext context) {
   return Container(
     margin:EdgeInsets.only(bottom: 20,) ,


     height: MediaQuery.of(context).size.height * 0.18,

     decoration: BoxDecoration(
       color: AppColors.primaryColor,
       borderRadius: BorderRadius.circular(20),
       image: DecorationImage(
         fit: BoxFit.fill,
         opacity: 0.4,
         image: AssetImage(
           AppAssets.bottomMosque,
         ),
       ),
     ),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Padding(
           padding: const EdgeInsets.only(top: 15),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(radioCardData.radioName,
                 style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.w700,
                     fontFamily: "Janna"
                 ),
               )
             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(bottom: 10),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image(
                 image: AssetImage(
                   radioCardData.icnPath,
                 ),
                 width: 95,
                 height: 45,
               ),
             ],
           ),
         ),
       ],
     ),
   ) ;
  }

}

