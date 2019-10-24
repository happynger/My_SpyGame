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

const ButtonStyle = ButtonThemeData(
  buttonColor: Colors.blueGrey,
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

ThemeData themeData = ThemeData(
  appBarTheme: AppBarTheme(
    textTheme: TextTheme(title: AppBarTextStyle)
  ),
  textTheme: TextTheme(
    title: TitleTextStyle,
    body1: BodyTextStyle,
    body2: CardTextStyle,
    button: ButtonTextStyle,
    display2: TimerTextStyle,
    caption: BoldTextStyle,
  ),
  buttonTheme: ButtonStyle,
);

const darkAppbar = AppBarTheme(
  color: Color(0xff4b4b4b),
  textTheme: TextTheme(title: AppBarTextStyle),
);

const darkButtonTheme = ButtonThemeData(
  buttonColor: Color(0xff18dcff),
  disabledColor: Color(0xff17c0eb),
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