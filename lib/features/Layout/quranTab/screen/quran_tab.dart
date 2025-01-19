import 'package:flutter/material.dart';
import 'package:islami_app/core/constants/app_assets.dart';
import 'package:islami_app/core/theme/app_colors.dart';
import 'package:islami_app/features/Layout/quranTab/screen/quran_details.dart';
import 'package:islami_app/features/Layout/quranTab/widgets/recent_card.dart';
import 'package:islami_app/features/Layout/quranTab/widgets/sura_card_widget.dart';
import 'package:islami_app/models/recent_card_data.dart';
import 'package:islami_app/models/sura_data.dart';

class QuranTab extends StatelessWidget{
  List<RecentData> recentData=[
    RecentData(
        suraNameEN: "Al-Anbiya",
        suraNameAR: "الأنبياء",
        suraVerses: "112"),
    RecentData(
        suraNameEN: "Al-Fatiha",
        suraNameAR: "الفاتحه",
        suraVerses: "7"),
  ];
  List<SuraData> suraData = [
    SuraData(suraNumber: "1", suraNameEN: "Al-Fatiha", suraNameAR: "الفاتحه", suraVerses: "7"),
    SuraData(suraNumber: "2", suraNameEN: "Al-Baqarah", suraNameAR: "البقرة", suraVerses: "286"),
    SuraData(suraNumber: "3", suraNameEN: "Aal-E-Imran", suraNameAR: "آل عمران", suraVerses: "200"),
    SuraData(suraNumber: "4", suraNameEN: "An-Nisa'", suraNameAR: "النساء", suraVerses: "176"),
    SuraData(suraNumber: "5", suraNameEN: "Al-Ma'idah", suraNameAR: "المائدة", suraVerses: "120"),
    SuraData(suraNumber: "6", suraNameEN: "Al-An'am", suraNameAR: "الأنعام", suraVerses: "165"),
    SuraData(suraNumber: "7", suraNameEN: "Al-A'raf", suraNameAR: "الأعراف", suraVerses: "206"),
    SuraData(suraNumber: "8", suraNameEN: "Al-Anfal", suraNameAR: "الأنفال", suraVerses: "75"),
    SuraData(suraNumber: "9", suraNameEN: "At-Tawbah", suraNameAR: "التوبة", suraVerses: "129"),
    SuraData(suraNumber: "10", suraNameEN: "Yunus", suraNameAR: "يونس", suraVerses: "109"),
    SuraData(suraNumber: "11", suraNameEN: "Hud", suraNameAR: "هود", suraVerses: "123"),
    SuraData(suraNumber: "12", suraNameEN: "Yusuf", suraNameAR: "يوسف", suraVerses: "111"),
    SuraData(suraNumber: "13", suraNameEN: "Ar-Ra'd", suraNameAR: "الرعد", suraVerses: "43"),
    SuraData(suraNumber: "14", suraNameEN: "Ibrahim", suraNameAR: "إبراهيم", suraVerses: "52"),
    SuraData(suraNumber: "15", suraNameEN: "Al-Hijr", suraNameAR: "الحجر", suraVerses: "99"),
    SuraData(suraNumber: "16", suraNameEN: "An-Nahl", suraNameAR: "النحل", suraVerses: "128"),
    SuraData(suraNumber: "17", suraNameEN: "Al-Isra", suraNameAR: "الإسراء", suraVerses: "111"),
    SuraData(suraNumber: "18", suraNameEN: "Al-Kahf", suraNameAR: "الكهف", suraVerses: "110"),
    SuraData(suraNumber: "19", suraNameEN: "Maryam", suraNameAR: "مريم", suraVerses: "98"),
    SuraData(suraNumber: "20", suraNameEN: "Ta-Ha", suraNameAR: "طه", suraVerses: "135"),
    SuraData(suraNumber: "21", suraNameEN: "Al-Anbiya", suraNameAR: "الأنبياء", suraVerses: "112"),
    SuraData(suraNumber: "22", suraNameEN: "Al-Hajj", suraNameAR: "الحج", suraVerses: "78"),
    SuraData(suraNumber: "23", suraNameEN: "Al-Mu'minun", suraNameAR: "المؤمنون", suraVerses: "118"),
    SuraData(suraNumber: "24", suraNameEN: "An-Nur", suraNameAR: "النّور", suraVerses: "64"),
    SuraData(suraNumber: "25", suraNameEN: "Al-Furqan", suraNameAR: "الفرقان", suraVerses: "77"),
    SuraData(suraNumber: "26", suraNameEN: "Ash-Shu'ara", suraNameAR: "الشعراء", suraVerses: "227"),
    SuraData(suraNumber: "27", suraNameEN: "An-Naml", suraNameAR: "النّمل", suraVerses: "93"),
    SuraData(suraNumber: "28", suraNameEN: "Al-Qasas", suraNameAR: "القصص", suraVerses: "88"),
    SuraData(suraNumber: "29", suraNameEN: "Al-Ankabut", suraNameAR: "العنكبوت", suraVerses: "69"),
    SuraData(suraNumber: "30", suraNameEN: "Ar-Rum", suraNameAR: "الرّوم", suraVerses: "60"),
    SuraData(suraNumber: "31", suraNameEN: "Luqman", suraNameAR: "لقمان", suraVerses: "34"),
    SuraData(suraNumber: "32", suraNameEN: "As-Sajda", suraNameAR: "السجدة", suraVerses: "30"),
    SuraData(suraNumber: "33", suraNameEN: "Al-Ahzab", suraNameAR: "الأحزاب", suraVerses: "73"),
    SuraData(suraNumber: "34", suraNameEN: "Saba", suraNameAR: "سبأ", suraVerses: "54"),
    SuraData(suraNumber: "35", suraNameEN: "Fatir", suraNameAR: "فاطر", suraVerses: "45"),
    SuraData(suraNumber: "36", suraNameEN: "Ya-Sin", suraNameAR: "يس", suraVerses: "83"),
    SuraData(suraNumber: "37", suraNameEN: "As-Saffat", suraNameAR: "الصافات", suraVerses: "182"),
    SuraData(suraNumber: "38", suraNameEN: "Sad", suraNameAR: "ص", suraVerses: "88"),
    SuraData(suraNumber: "39", suraNameEN: "Az-Zumar", suraNameAR: "الزمر", suraVerses: "75"),
    SuraData(suraNumber: "40", suraNameEN: "Ghafir", suraNameAR: "غافر", suraVerses: "85"),
    SuraData(suraNumber: "41", suraNameEN: "Fussilat", suraNameAR: "فصّلت", suraVerses: "54"),
    SuraData(suraNumber: "42", suraNameEN: "Ash-Shura", suraNameAR: "الشورى", suraVerses: "53"),
    SuraData(suraNumber: "43", suraNameEN: "Az-Zukhruf", suraNameAR: "الزخرف", suraVerses: "89"),
    SuraData(suraNumber: "44", suraNameEN: "Ad-Dukhan", suraNameAR: "الدّخان", suraVerses: "59"),
    SuraData(suraNumber: "45", suraNameEN: "Al-Jathiya", suraNameAR: "الجاثية", suraVerses: "37"),
    SuraData(suraNumber: "46", suraNameEN: "Al-Ahqaf", suraNameAR: "الأحقاف", suraVerses: "35"),
    SuraData(suraNumber: "47", suraNameEN: "Muhammad", suraNameAR: "محمد", suraVerses: "38"),
    SuraData(suraNumber: "48", suraNameEN: "Al-Fath", suraNameAR: "الفتح", suraVerses: "29"),
    SuraData(suraNumber: "49", suraNameEN: "Al-Hujurat", suraNameAR: "الحجرات", suraVerses: "18"),
    SuraData(suraNumber: "50", suraNameEN: "Qaf", suraNameAR: "ق", suraVerses: "45"),
    SuraData(suraNumber: "51", suraNameEN: "Adh-Dhariyat", suraNameAR: "الذاريات", suraVerses: "60"),
    SuraData(suraNumber: "52", suraNameEN: "At-Tur", suraNameAR: "الطور", suraVerses: "49"),
    SuraData(suraNumber: "53", suraNameEN: "An-Najm", suraNameAR: "النجم", suraVerses: "62"),
    SuraData(suraNumber: "54", suraNameEN: "Al-Qamar", suraNameAR: "القمر", suraVerses: "55"),
    SuraData(suraNumber: "55", suraNameEN: "Ar-Rahman", suraNameAR: "الرحمن", suraVerses: "78"),
    SuraData(suraNumber: "56", suraNameEN: "Al-Waqi'a", suraNameAR: "الواقعة", suraVerses: "96"),
    SuraData(suraNumber: "57", suraNameEN: "Al-Hadid", suraNameAR: "الحديد", suraVerses: "29"),
    SuraData(suraNumber: "58", suraNameEN: "Al-Mujadila", suraNameAR: "المجادلة", suraVerses: "22"),
    SuraData(suraNumber: "59", suraNameEN: "Al-Hashr", suraNameAR: "الحشر", suraVerses: "24"),
    SuraData(suraNumber: "60", suraNameEN: "Al-Mumtahina", suraNameAR: "الممتحنة", suraVerses: "13"),
    SuraData(suraNumber: "61", suraNameEN: "As-Saff", suraNameAR: "الصف", suraVerses: "14"),
    SuraData(suraNumber: "62", suraNameEN: "Al-Jumu'a", suraNameAR: "الجمعة", suraVerses: "11"),
    SuraData(suraNumber: "63", suraNameEN: "Al-Munafiqun", suraNameAR: "المنافقون", suraVerses: "11"),
    SuraData(suraNumber: "64", suraNameEN: "At-Taghabun", suraNameAR: "التغابن", suraVerses: "18"),
    SuraData(suraNumber: "65", suraNameEN: "At-Talaq", suraNameAR: "الطلاق", suraVerses: "12"),
    SuraData(suraNumber: "66", suraNameEN: "At-Tahrim", suraNameAR: "التحريم", suraVerses: "12"),
    SuraData(suraNumber: "67", suraNameEN: "Al-Mulk", suraNameAR: "الملك", suraVerses: "30"),
    SuraData(suraNumber: "68", suraNameEN: "Al-Qalam", suraNameAR: "القلم", suraVerses: "52"),
    SuraData(suraNumber: "69", suraNameEN: "Al-Haqqah", suraNameAR: "الحاقة", suraVerses: "52"),
    SuraData(suraNumber: "70", suraNameEN: "Al-Ma'arij", suraNameAR: "المعارج", suraVerses: "44"),
    SuraData(suraNumber: "71", suraNameEN: "Nuh", suraNameAR: "نوح", suraVerses: "28"),
    SuraData(suraNumber: "72", suraNameEN: "Al-Jinn", suraNameAR: "الجن", suraVerses: "28"),
    SuraData(suraNumber: "73", suraNameEN: "Al-Muzzammil", suraNameAR: "المزّمّل", suraVerses: "20"),
    SuraData(suraNumber: "74", suraNameEN: "Al-Muddathir", suraNameAR: "المدّثر", suraVerses: "56"),
    SuraData(suraNumber: "75", suraNameEN: "Al-Qiyamah", suraNameAR: "القيامة", suraVerses: "40"),
    SuraData(suraNumber: "76", suraNameEN: "Al-Insan", suraNameAR: "الإنسان", suraVerses: "31"),
    SuraData(suraNumber: "77", suraNameEN: "Al-Mursalat", suraNameAR: "المرسلات", suraVerses: "50"),
    SuraData(suraNumber: "78", suraNameEN: "An-Naba'", suraNameAR: "النبأ", suraVerses: "40"),
    SuraData(suraNumber: "79", suraNameEN: "An-Nazi'at", suraNameAR: "النازعات", suraVerses: "46"),
    SuraData(suraNumber: "80", suraNameEN: "Abasa", suraNameAR: "عبس", suraVerses: "42"),
    SuraData(suraNumber: "81", suraNameEN: "At-Takwir", suraNameAR: "التكوير", suraVerses: "29"),
    SuraData(suraNumber: "82", suraNameEN: "Al-Infitar", suraNameAR: "الإنفطار", suraVerses: "19"),
    SuraData(suraNumber: "83", suraNameEN: "Al-Mutaffifin", suraNameAR: "المطفّفين", suraVerses: "36"),
    SuraData(suraNumber: "84", suraNameEN: "Al-Inshiqaq", suraNameAR: "الإنشقاق", suraVerses: "25"),
    SuraData(suraNumber: "85", suraNameEN: "Al-Buruj", suraNameAR: "البروج", suraVerses: "22"),
    SuraData(suraNumber: "86", suraNameEN: "At-Tariq", suraNameAR: "الطارق", suraVerses: "17"),
    SuraData(suraNumber: "87", suraNameEN: "Al-A'la", suraNameAR: "الأعلى", suraVerses: "19"),
    SuraData(suraNumber: "88", suraNameEN: "Al-Ghashiyah", suraNameAR: "الغاشية", suraVerses: "26"),
    SuraData(suraNumber: "89", suraNameEN: "Al-Fajr", suraNameAR: "الفجر", suraVerses: "30"),
    SuraData(suraNumber: "90", suraNameEN: "Al-Balad", suraNameAR: "البلد", suraVerses: "20"),
    SuraData(suraNumber: "91", suraNameEN: "Ash-Shams", suraNameAR: "الشمس", suraVerses: "15"),
    SuraData(suraNumber: "92", suraNameEN: "Al-Lail", suraNameAR: "الليل", suraVerses: "21"),
    SuraData(suraNumber: "93", suraNameEN: "Ad-Duha", suraNameAR: "الضحى", suraVerses: "11"),
    SuraData(suraNumber: "94", suraNameEN: "Ash-Sharh", suraNameAR: "الشرح", suraVerses: "8"),
    SuraData(suraNumber: "95", suraNameEN: "At-Tin", suraNameAR: "التين", suraVerses: "8"),
    SuraData(suraNumber: "96", suraNameEN: "Al-'Alaq", suraNameAR: "العلق", suraVerses: "19"),
    SuraData(suraNumber: "97", suraNameEN: "Al-Qadr", suraNameAR: "القدر", suraVerses: "5"),
    SuraData(suraNumber: "98", suraNameEN: "Al-Bayyina", suraNameAR: "البيّنة", suraVerses: "8"),
    SuraData(suraNumber: "99", suraNameEN: "Az-Zalzala", suraNameAR: "الزلزلة", suraVerses: "8"),
    SuraData(suraNumber: "100", suraNameEN: "Al-Adiyat", suraNameAR: "العاديات", suraVerses: "11"),
    SuraData(suraNumber: "101", suraNameEN: "Al-Qari'a", suraNameAR: "القارعة", suraVerses: "11"),
    SuraData(suraNumber: "102", suraNameEN: "At-Takathur", suraNameAR: "التكاثر", suraVerses: "8"),
    SuraData(suraNumber: "103", suraNameEN: "Al-Asr", suraNameAR: "العصر", suraVerses: "3"),
    SuraData(suraNumber: "104", suraNameEN: "Al-Humaza", suraNameAR: "الهمزة", suraVerses: "9"),
    SuraData(suraNumber: "105", suraNameEN: "Al-Fil", suraNameAR: "الفيل", suraVerses: "5"),
    SuraData(suraNumber: "106", suraNameEN: "Quraish", suraNameAR: "قريش", suraVerses: "4"),
    SuraData(suraNumber: "107", suraNameEN: "Al-Ma'un", suraNameAR: "الماعون", suraVerses: "7"),
    SuraData(suraNumber: "108", suraNameEN: "Al-Kawthar", suraNameAR: "الكوثر", suraVerses: "3"),
    SuraData(suraNumber: "109", suraNameEN: "Al-Kafirun", suraNameAR: "الكافرون", suraVerses: "6"),
    SuraData(suraNumber: "110", suraNameEN: "An-Nasr", suraNameAR: "النصر", suraVerses: "3"),
    SuraData(suraNumber: "111", suraNameEN: "Al-Masad", suraNameAR: "المسد", suraVerses: "5"),
    SuraData(suraNumber: "112", suraNameEN: "Al-Ikhlas", suraNameAR: "الإخلاص", suraVerses: "4"),
    SuraData(suraNumber: "113", suraNameEN: "Al-Falaq", suraNameAR: "الفلق", suraVerses: "5"),
    SuraData(suraNumber: "114", suraNameEN: "An-Nas", suraNameAR: "الناس", suraVerses: "6")
  ];

  @override
  Widget build(BuildContext context) {
   return Container(
     decoration: BoxDecoration(
       image: DecorationImage(

         fit: BoxFit.cover,
           image: AssetImage(
               AppAssets.quranBg,
           ),
       ),

     ),

     child: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image.asset(AppAssets.layoutLogo),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
       
               decoration: InputDecoration(
                 fillColor: AppColors.secondryColor.withOpacity(0.5) ,
                 filled: true,
                 prefixIcon: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: ImageIcon(
                     color: AppColors.primaryColor,
                     AssetImage(
                       AppAssets.quranIcon,
                     ),
                   ),
                 ),
                 enabledBorder:
                 OutlineInputBorder(
       
                   borderSide: BorderSide(
                     color: AppColors.primaryColor,
                     width: 2,
       
                   ),
                   borderRadius: BorderRadius.circular(25),
       
                 ),
                 focusedBorder:  OutlineInputBorder(
                   borderSide: BorderSide(
                     color: AppColors.primaryColor,
                     width: 2,
       
                   ),
                   borderRadius: BorderRadius.circular(25),
       
       
                 ),
                 hintText: "Sura Name",
                 hintStyle: TextStyle(
                   color: AppColors.tittleColor,
                   fontSize: 16,
                   fontWeight: FontWeight.w700,
                 ),
       
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
             child: Text(
               "Most Recent",
             style: TextStyle(
               fontSize: 16,
               fontWeight:FontWeight.w700 ,
               color: AppColors.tittleColor,
             ),
             ),
           ),
           SizedBox(
             height: 155,
             child: ListView.separated(
               itemCount: recentData.length,
               scrollDirection: Axis.horizontal,
               itemBuilder:
                   (context, index) =>
                       RecentCardWidget(
                         recentData: recentData[index],
                       ),
               separatorBuilder:
                   (context, index) {
                 return SizedBox(width: 20);
                 },
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
             child: Text(
               "Suras List",
               style: TextStyle(
                 fontSize: 16,
                 fontWeight:FontWeight.w700 ,
                 color: AppColors.tittleColor,
               ),
             ),
           ),
       
           ListView.separated(
             shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
               itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context,
                          QuranDetails.routeName,
                        arguments: suraData[index],
                      );

                    },
                   child: SuraCardWidget(
                       suraData:suraData[index],
                   ),
               ),
               separatorBuilder: (context, index) => Divider(
                 endIndent: 60,
                 indent: 60,
               ),
               itemCount: suraData.length,
           )
         ],
       ),
     ),
   );
  }

}