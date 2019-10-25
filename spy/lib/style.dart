import 'package:flutter/material.dart';

const HugeTextSize = 46.0;
const LargeTextSize = 26.0;
const MediumTextSize = 20.0;
const SmallTextSize = 16.0;

const String FontNameDefault = 'Montserrat';

const AppBarTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w600,
  fontSize: MediumTextSize,
  color: Colors.white,
);

const TitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: LargeTextSize,
  color: Colors.black,
);

const BodyTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: SmallTextSize,
  color: Colors.black,
);

const ButtonTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: Colors.white
);

const TimerTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w600,
  fontSize: HugeTextSize,
  color: Colors.black
);

const CardTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: Colors.black
);

const BoldTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w600,
  fontSize: MediumTextSize,
  color: Colors.black
);

var whiteButtonStyle = ButtonThemeData(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  padding: EdgeInsets.all(20),
  textTheme: ButtonTextTheme.normal,
  buttonColor: Color(0xffa5b1c2),
  height: 40.0,
);

ThemeData themeData = ThemeData(
  appBarTheme: AppBarTheme(
    textTheme: TextTheme(title: AppBarTextStyle),
    color: Color(0xffa55eea),
  ),
  backgroundColor: Color(0xffd1d8e0),
  canvasColor: Color(0xffd1d8e0),
  buttonTheme: whiteButtonStyle,
  textTheme: TextTheme(
    title: TitleTextStyle,
    body1: BodyTextStyle,
    body2: CardTextStyle,
    button: ButtonTextStyle,
    display2: TimerTextStyle,
    caption: BoldTextStyle,
  ),
);

const darkAppbar = AppBarTheme(
  color: Color(0xff4b4b4b),
  textTheme: TextTheme(title: AppBarTextStyle),
);

var darkButtonTheme = ButtonThemeData(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  padding: EdgeInsets.all(20),
  buttonColor: Color(0xff2bcbba),
  disabledColor: Color(0xff4b6584),
  textTheme: ButtonTextTheme.normal,
);

const darkTitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: LargeTextSize,
  color: Colors.white,
);

const darkBodyTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: SmallTextSize,
  color: Colors.white,
);

const darkButtonTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: Colors.black
);

const darkTimerTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w600,
  fontSize: HugeTextSize,
  color: Colors.white
);

const darkCardTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: Colors.black
);

const darkBoldTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w600,
  fontSize: MediumTextSize,
  color: Colors.white
);

const darkTextTheme = TextTheme(
  title: darkTitleTextStyle,
  body1: darkBodyTextStyle,
  body2: darkCardTextStyle,
  display2: darkTimerTextStyle,
  button: darkButtonTextStyle,
  caption: darkBoldTextStyle,
);

ThemeData darkThemeData = ThemeData(
  backgroundColor: Color(0xff3d3d3d),
  canvasColor: Color(0xff3d3d3d),
  accentColor: Color(0xff7d5fff),
  appBarTheme: darkAppbar,
  buttonTheme: darkButtonTheme,
  hintColor: Color(0xffff4d4d),
  textTheme: darkTextTheme,
);