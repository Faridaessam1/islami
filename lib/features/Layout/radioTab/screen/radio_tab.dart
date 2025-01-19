import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/features/Layout/radioTab/widgets/radio_card_widget.dart';
import 'package:islami_app/features/Layout/widgets/custom_filled_button_widget.dart';
import 'package:islami_app/models/radio_card_data.dart';

class RadioTab extends StatelessWidget{
  List<RadioCardData> radioDataList=[
    RadioCardData(radioName: "Radio Ibrahim Al-Akdar", icnPath:AppAssets.playIcn),
    RadioCardData(radioName: "Radio Ibrahim Al-Akdar", icnPath:AppAssets.pauseIcn),
    RadioCardData(radioName: "Radio Ibrahim Al-Akdar", icnPath:AppAssets.playIcn),
    RadioCardData(radioName: "Radio Ibrahim Al-Akdar", icnPath:AppAssets.pauseIcn),
    RadioCardData(radioName: "Radio Ibrahim Al-Akdar", icnPath:AppAssets.playIcn),
    RadioCardData(radioName: "Radio Ibrahim Al-Akdar", icnPath:AppAssets.pauseIcn),
    RadioCardData(radioName: "Radio Ibrahim Al-Akdar", icnPath:AppAssets.playIcn),

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(AppAssets.radioBg),
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Image(
                image: AssetImage(
                    AppAssets.layoutLogo
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Expanded(
                  child:
                  CustomFilledButtonWidget(type: "Radio"),
                ),
                Expanded(
                    child:
                    CustomFilledButtonWidget(type: "Reciters"),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: radioDataList.length,
                itemBuilder:(context, index) =>
                    RadioCardWidget(radioCardData: radioDataList[index] ,),
              
              ),
            )
          ],
        ),
      ),
    );
  }

}