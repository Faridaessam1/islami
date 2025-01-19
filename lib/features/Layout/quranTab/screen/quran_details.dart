import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/models/sura_data.dart';

class QuranDetails extends StatefulWidget{
  static String routeName = "quranDetails";


  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {

  List<String> verses = [];

  @override
  Widget build(BuildContext context) {

    var args= ModalRoute.of(context)?.settings.arguments as SuraData;

    if(verses.isEmpty) loadData(args.suraNumber.toString());

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
            AppAssets.souraDetailsScreen,
        ),
          fit: BoxFit.fill
        ),
      ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(
              color: AppColors.primaryColor
            ),
            centerTitle: true,
            title: Text(args.suraNameEN,
            style: TextStyle(
              fontFamily: "Janna",
              fontSize:20 ,
              fontWeight:FontWeight.w700 ,
              color: AppColors.primaryColor,
            ),
            ),

          ),
          body: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Text(args.suraNameAR,
                    style: TextStyle(
                      fontFamily: "Janna",
                      fontSize:24 ,
                      fontWeight:FontWeight.w700 ,
                      color: AppColors.primaryColor,
                    ),),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    itemCount: verses.length,
                    itemBuilder:(context , index) =>
                  Text("${verses[index]} [${index + 1}]",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Janna",
                      fontSize:24 ,
                      fontWeight:FontWeight.w700 ,
                      color: AppColors.primaryColor,
                    ),
                  ),),
                ),
              )
            ],
          ),
        ),
    );
  }

void loadData(String suraID) async {
  String content = await rootBundle.loadString("assets/files/$suraID.txt");
  setState(() {
    verses = content.split("\n");
  });
}
}