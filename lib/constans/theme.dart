import 'package:flutter/material.dart';

abstract class Apptheme {
  static ThemeData basic() => ThemeData(
      backgroundColor: backgroundLight,
      fontFamily: 'Arial',
      textTheme: const TextTheme(
        headline1: headline1,
        headline2: headline2,
        headline3: headline3,
        bodyText1: bodyText1,
        bodyText2: bodyText2,
        subtitle1: subtitle1,
        subtitle2: subtitle2,
      ));

  static const Color backgroundLight = Color(0xffE5E8ED);
  static const Color backgroundDark = Color(0xFF17181F);

  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color cardDark = Color(0xFF1B1D2B);

  static const Color strokeDark = Color(0x0D7584A1);
  static const Color strokeLight = Color(0x0D7584A1);

  //Third Filter Selector color
  static const Color actionBlueFaint = Color(0x260076FF);

  //Navigate Icon
  static const Color bodyFaint = Color(0x357584A1);

  //ELEMENTS
  static const Color grey = Color(0xFF838EA6);
  static const Color white = Color(0xFFFFFFFF);
  static const Color white50 = Color(0x80FFFFFF);
  static const Color logoYellow = Color(0xFFFDD400);
  static const Color actionBlue = Color(0xff007AFF);
  static const Color purple = Color(0xFF5D5DFF);
  static const Color importantRed = Color(0xffff2000);
  static const Color active = Color(0xffff0056);

  //TEXT
  static const Color black = Color(0xff1D2224);
  static const Color lightDark = Color(0xff4A5467);
  static const Color heading2 = Color(0xff454F63);
  static const Color body = Color(0xff7584A1);

  //CATEGORIES
  static const Color pink = Color(0xFFD332C0);
  static const Color pinkOpacity = Color(0x1AD332C0);
  static const Color blue = Color(0xFF324BD3);
  static const Color blueOpacity = Color(0x1A324BD3);
  static const Color red = Color(0xFFFF0000);
  static const Color redOpacity = Color(0x1AFF0000);

  //ITEM TAGS
  static const Color signatureTag = Color(0xffa63A8E);
  static const Color rescueTag = Color(0xff0E7701);
  static const Color dailySpecialTag = Color(0xff0F3E94);
  static const Color discountTag = Color(0xffffffff);
  static const Color cashBackTag = Color(0xffaa00FF);
  static const Color discount = Color(0xffa63B8E);

  //PERCENTINDICATOR
  static const Color percentColor = Color(0xFFD94C80);
  //CONTAINER COLOR
  static const Color businessSetupColor = Color(0xFFFD507E);

  static const headline1 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: black,
    fontFamily: 'Arial',
  );
  static const headline2 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: black,
    fontFamily: 'Arial',
  );
  static const headline3 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: white,
    fontFamily: 'Arial',
  );
  static const bodyText1 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    fontFamily: 'Arial',
    color: lightDark,
  );
  static const bodyText2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: lightDark,
    fontFamily: 'Arial',
  );
  static const subtitle1 = TextStyle(
    fontSize: 10,
    fontFamily: 'Arial',
    fontWeight: FontWeight.w500,
    color: white,
  );
  static const subtitle2 = TextStyle(
    fontFamily: 'Arial',
    fontSize: 10,
    fontWeight: FontWeight.w100,
    color: body,
  );
}
