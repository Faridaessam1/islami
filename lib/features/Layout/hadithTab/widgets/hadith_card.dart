import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/models/hadith_tab_data.dart';

class HadithCardWidget extends StatelessWidget {
  HadithTabData hadithTabData;

  HadithCardWidget({
    super.key,
    required this.hadithTabData,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width:double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width * 0.60,
              child: Image(image: AssetImage(AppAssets.layoutLogo)),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: 0.25,
                  image: AssetImage(
                    AppAssets.HadithCardBackGround,
                  ),
                ),
                color: AppColors.primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical:5),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 90,
                          width: 60,
                          child: Image(
                            image: AssetImage(
                              AppAssets.leftCornerHadithTab,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(hadithTabData.hadithTittle,
                          style:TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Janna",
                          ),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: 90,
                          width: 60,
                          child: Image(
                            image: AssetImage(
                              AppAssets.rightCornerHadithTab,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Text(
                      hadithTabData.HadithContent,
                      style:
                      TextStyle(
                        fontFamily:"Janna",
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    AppAssets.bottomMosque,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
