import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/features/Layout/hadithTab/widgets/hadith_card.dart';
import 'package:islami_app/models/hadith_tab_data.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {

  List<HadithTabData> hadithDataList = [];

  @override
  Widget build(BuildContext context) {
    if(hadithDataList.isEmpty)  loadHadithData();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          opacity: 0.3,
          fit: BoxFit.fill,
          image: AssetImage(
            AppAssets.hadith,
          ),
        ),
      ),
      child : Expanded(
        child: SizedBox(
          width:MediaQuery.of(context).size.width *0.90,
          height:MediaQuery.of(context).size.height *0.90,
          child: CarouselSlider(
            items: hadithDataList.map((e) {
              return HadithCardWidget(
                hadithTabData: e,
              );
            }).toList(),
            options: CarouselOptions(
              aspectRatio: 0.58,
              viewportFraction: 0.7,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              enlargeFactor: 0.3,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
    );
  }

  void loadHadithData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");

    setState(() {
      List<String> hadith = content.split("#");
      for (var element in hadith) {
        String singleHadith = element.trim();

        if (singleHadith.isNotEmpty) {
          int index = singleHadith.indexOf("\n");

          if (index != -1) {
            String hadithTittle = singleHadith.substring(0, index);
            String hadithContent = singleHadith.substring(index + 1);

            var hadithData = HadithTabData(
              hadithTittle: hadithTittle,
              HadithContent: hadithContent,
            );
            hadithDataList.add(hadithData);
          }
        }
      }
    });
  }

}