import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';

class SebhaTab extends StatefulWidget{
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;
  int currentIndex = 0 ;
  final List<String> tasbehList = [
    'سُبْحَانَ اللَّهِ',
    'الْحَمْدُ لِلَّهِ',
    'اللَّهُ أَكْبَرُ',
    'لَا إِلٰهَ إِلَّا اللَّهُ',
    'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ',
    'اللَّهُمَّ صَلِّ عَلَىٰ مُحَمَّدٍ',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AppAssets.sebhaBg,
          ),
        ),
      ),
      child: Column(

        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.layoutLogo,
                ),
              ),
            ),
          ),
          Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
            style: TextStyle(
              fontFamily: "Janna",
              fontSize: 30,
              fontWeight:FontWeight.w500,
              color: AppColors.white,
            ),
          ),

          Center(
            child: GestureDetector(
              onTap: onSebhaTab,
              child: Stack(
                children: [
                  Container(
                    margin:EdgeInsets.only(top:19,left:20,),
                    height: MediaQuery.of(context).size.height * 0.10,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          AppAssets.sebhHead,
                        ),
                      ),
                    ),
                  ),

                  Center(
                    child: Stack(
                        children:[
                          Transform.rotate(
                            angle:angle,
                            child: Container(

                              height: MediaQuery.of(context).size.height * 0.60,
                              width: MediaQuery.of(context).size.width * 0.80,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppAssets.SebhaBody,
                                  ),
                                ),
                              ),

                            ),
                          ),
                          Positioned(
                            bottom: 250,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: Text(
                                counter.toString(),
                                style: TextStyle(
                                  fontFamily: "Janna",
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                  Align(
                    alignment : Alignment.bottomCenter,
                    child: Text(
                      tasbehList[currentIndex],
                      style: TextStyle(
                        fontFamily: "Janna",
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
  onSebhaTab(){

    setState(() {
      counter++;
      angle-=1;
      if(counter == 33){
        counter = 0 ;
        currentIndex++;
        if(currentIndex == 5) currentIndex = 0;
      }
    });
  }
}