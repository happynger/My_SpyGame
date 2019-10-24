import 'dart:io';

import 'package:flutter/material.dart';
import 'package:SpyGame/app.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text('Spy Game'),
        )
      ),
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
              RaisedButton(
                onPressed: () => _onPlayPress(context),
                child: Text('Play', style: TextStyle(fontSize: 26),),
              ),
              RaisedButton(
                onPressed: () => _onPressRules(context),
                child: Text('Rules', style: TextStyle(fontSize: 26)),
              ),
              RaisedButton(
                onPressed: () { exit(0); },
                child: Text('Exit', style: TextStyle(fontSize: 26)),
              )
            ],
          ),
        ], 
      )
    );
  }

  void _onPlayPress(BuildContext context)
  {
    Navigator.pushNamed(context, RPlaySettings);
  }

  void _onPressRules(BuildContext context)
  {
    Navigator.pushNamed(context, RRules);
  }
}