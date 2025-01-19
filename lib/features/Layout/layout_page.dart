import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/features/Layout/hadithTab/screen/hadith_tab.dart';
import 'package:islami_app/features/Layout/quranTab/screen/quran_tab.dart';
import 'package:islami_app/features/Layout/radioTab/screen/radio_tab.dart';
import 'package:islami_app/features/Layout/sebhaTab/screen/sebha_tab.dart';
import 'package:islami_app/features/Layout/timesTab/screen/times_tab.dart';

import 'widgets/custom_nav_bar_item.dart';

class LayoutPage extends StatefulWidget{
  static String routeName = "home";

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int selectedIndex = 0;
  List<Widget> tabs=[
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimesTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.primaryColor,
          fixedColor: AppColors.white,
          showUnselectedLabels: false,

          items: [
           BottomNavigationBarItem(
             icon:
             CustomNavBarItem(
               selectedIndex: selectedIndex,
               iconPath:AppAssets.quranIcon,
               navBarItem: 0,
             ),
                label: "Quran",
           ),
            BottomNavigationBarItem(
              icon:  CustomNavBarItem(
                selectedIndex: selectedIndex,
                iconPath:AppAssets.hadithIcon,
                navBarItem: 1,
              ),
              label: "Hadith",
            ),
            BottomNavigationBarItem(
              icon:  CustomNavBarItem(
                selectedIndex: selectedIndex,
                iconPath:AppAssets.sebhaIcon,
                navBarItem: 2,
              ),
              label: "Sebha",
            ),
            BottomNavigationBarItem(
              icon:  CustomNavBarItem(
                selectedIndex: selectedIndex,
                iconPath:AppAssets.radioIcon,
                navBarItem: 3,
              ),
              label: "Radio",
            ),
            BottomNavigationBarItem(
              icon:  CustomNavBarItem(
                selectedIndex: selectedIndex,
                iconPath:AppAssets.timesIcon,
                navBarItem: 4,
              ),
              label: "Times",
            ),
          ],
      ),
      body: tabs[selectedIndex],
    );
  }
}