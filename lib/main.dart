import 'package:flutter/material.dart';
import 'package:islami_app/features/splash/pages/splash_page.dart';

import 'package:islami_app/features/Layout/layout_page.dart';
import 'features/Layout/quranTab/screen/quran_details.dart';
import 'features/onBoarding/pages/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashPage.routeName,
    routes: {
      SplashPage.routeName:(_){
        return SplashPage();
    },
      OnBoardingScreen.routeName:(_){
        return OnBoardingScreen();
      },
      LayoutPage.routeName:(_){
        return LayoutPage();
      },
      QuranDetails.routeName:(_){
        return QuranDetails();
      },
    },
    );
  }
}
