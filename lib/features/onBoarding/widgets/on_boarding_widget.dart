import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/core/widgets/text_button.dart';
import 'package:islami_app/features/Layout/layout_page.dart';
import '../../../models/on_boarding_data.dart';
import 'package:islami_app/features/onBoarding/pages/on_boarding_screen.dart';


class OnBoarding extends StatefulWidget {
  PageController pageController;
  OnBoardingData data;


  OnBoarding({
    super.key,
    required this.data,
    required this.pageController,


  });

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage=0;
  @override
  void initState() {
    widget.pageController.addListener(() {
      setState(() {
        currentPage = widget.pageController.page?.round() ?? 0;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color:AppColors.Black,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            alignment: Alignment.center,
            children: [

              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  AppAssets.mosqueSplash,

                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 130),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    AppAssets.islamiLogo,
                    height: MediaQuery.of(context).size.height * 0.08,




                  ),
                ),
              ),
              Image.asset(
                widget.data.centerImage,


              ),

              Container(
                margin: EdgeInsets.only(top: 600),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text( widget.data.text,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (currentPage > 0)
                 Align(
                   alignment: Alignment.bottomLeft,
                   child: TextButtonWidget(
                     text: "Back",
                     onpress: () {
                       widget.pageController.previousPage(
                           duration: Duration(milliseconds: 300),
                       curve: Curves.easeInOut,
                       );
                     },
                   ),
                 ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButtonWidget(
                      text: "Next",
                      onpress: () {
                        widget.pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                        if (currentPage == onBoarding.length-1)
                          Navigator.of(context).pushNamed(LayoutPage.routeName);
                      },
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: DotsIndicator(
                    dotsCount: onBoarding.length,
                    position: currentPage,
                    decorator: DotsDecorator(
                      activeColor: AppColors.primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
}
}
