import 'dart:io';

import 'package:SpyGame/screens/mainmenu/menu_button.dart';
import 'package:SpyGame/screens/shared/sharedappbar.dart';
import 'package:flutter/material.dart';
import 'package:SpyGame/app.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getSharedAppbar('Spy Game'),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.all(20),
            child: FloatingActionButton(
              onPressed: () {SpyApp.switchTheme();},
              heroTag: "ThemeSwitch",
              child: Icon(Icons.mode_edit),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to the game of spy!',
                style: TextStyle(fontSize: 20),
              ),
              MainMenuButton('Play', () => _onPressPlay(context)),
              MainMenuButton('Rules', () => _onPressRules(context)),
              MainMenuButton('Exit', () { exit(0); })
            ],
          ),
        ], 
      )
    );
  }

  void _onPressPlay(BuildContext context)
  {
    Navigator.pushNamed(context, RPlaySettings);
  }

  void _onPressRules(BuildContext context)
  {
    Navigator.pushNamed(context, RRules);
  }
}