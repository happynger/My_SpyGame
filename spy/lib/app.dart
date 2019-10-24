import 'package:flutter/material.dart';
import 'package:SpyGame/screens/end/end.dart';
import 'package:SpyGame/screens/inforound/inforound.dart';
import 'package:SpyGame/screens/mainmenu/main_menu.dart';
import 'package:SpyGame/screens/play_setting/playsettings.dart';
import 'package:SpyGame/screens/playtimer/playtimer.dart';
import 'package:SpyGame/screens/rulesscreen/rules.dart';
import 'package:SpyGame/style.dart';

const RHome = '/Home';
const RPlaySettings = '/PlaySetting';
const RRules = '/Rules';
const RInfoRound = '/InfoRound';
const RPlay = '/Play';
const REnd = '/End';

class SpyApp extends StatefulWidget
{
  static _SpyAppState _instance;

  @override
  _SpyAppState createState()
  {
    _instance = _SpyAppState();
    return _instance;
  }

  static var thememode = ThemeMode.dark;

  static void switchTheme()
  {
    if (thememode == ThemeMode.dark)
      thememode = ThemeMode.light;
    else if (thememode == ThemeMode.light)
      thememode = ThemeMode.dark;
    _instance.changeMode(thememode);
  }
}

class _SpyAppState extends State<SpyApp> {
  var thememode = SpyApp.thememode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: themeData,
      darkTheme: darkThemeData,
      themeMode: thememode,
    );
  }

  void changeMode(ThemeMode mode) => setState(() {thememode = mode;});

  RouteFactory _routes()
  {
    return (settings)
    {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name)
      {
        case '/':
          screen = new MainMenu();
          break;
        case RHome:
          screen = new MainMenu();
          break;
        case RPlaySettings:
          screen = new PlaySettings();
          break;
        case RInfoRound:
          screen = new InfoRound(arguments['spyCount'], arguments['totalCount']);
          break;
        case RPlay:
          screen = new PlayTimer();
          break;
        case REnd:
          screen = new EndScreen();
          break;
        case RRules:
          screen = new Rules();
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}