import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/features/onBoarding/widgets/on_boarding_widget.dart';
import '../../../models/on_boarding_data.dart';

class OnBoardingScreen extends StatefulWidget {
  static String routeName = 'onBoarding';


  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController = PageController();



  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: onBoarding.length,
      itemBuilder: (BuildContext context, int index) {
        OnBoardingData data = onBoarding[index];
        return OnBoarding(
          data: data,
          pageController: _pageController,


        );
      },
    );
  }
}





