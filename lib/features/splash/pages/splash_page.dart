import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/features/onBoarding/pages/on_boarding_screen.dart';

class SplashPage extends StatefulWidget {
  static String routeName = "splash";

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement
        (MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage(
                    AppAssets.splachBg
                )
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: FadeInDown(
                  child: Image.asset(
                      AppAssets.splachGlow,
                      height: Size.height * 0.25,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 250),

                child: Align(
                  alignment: Alignment.centerLeft,

                  child: FadeInLeft(
                    child: Image.asset(
                      AppAssets.splachLeftShape,
                      height: Size.height * 0.25,

                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 250),

                child: Align(
                  alignment: Alignment.centerRight,

                  child: FadeInRight(
                    child: Image.asset(
                      AppAssets.splachRightShape,
                      height: Size.height * 0.25,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,

                child: FadeInUp(
                  child: Image.asset(
                    AppAssets.splachBranding,
                    height: Size.height * 0.25,

                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: FadeIn(
                    child: Image.asset(
                      AppAssets.mosqueSplash,
                      height: Size.height * 0.25,

                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Align(
                  alignment: Alignment.center,

                  child: FadeIn(
                    child: Image.asset(
                      AppAssets.islamiLogo,
                      height: Size.height * 0.07,

                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom:50),

                child: Align(
                  alignment: Alignment.center,

                  child: FadeIn(
                    child: Image.asset(
                      AppAssets.splachLogo,
                      height: Size.height * 0.11,

                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
