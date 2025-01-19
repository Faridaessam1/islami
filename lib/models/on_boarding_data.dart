import '../core/constants/app_assets.dart';

class OnBoardingData{
  String text;
  String centerImage;

  OnBoardingData({
    required this.text,
    required this.centerImage,
  });
}

List<OnBoardingData> onBoarding=[
  OnBoardingData(
      text: "Welcome To Islami App",
      centerImage: AppAssets.OnBoarding1),
  OnBoardingData(
      text: "We Are Very Excited To Have You In Our Community",
      centerImage: AppAssets.OnBoarding2),
  OnBoardingData(
      text: "Read, and your Lord is the Most Generous",
      centerImage: AppAssets.OnBoarding3),
  OnBoardingData(
      text: "Praise the name of your Lord, the Most High",
      centerImage: AppAssets.OnBoarding4),
  OnBoardingData(
      text: "You can listen to the Holy Quran Radio through the application for free and easily",
      centerImage: AppAssets.OnBoarding5),
];