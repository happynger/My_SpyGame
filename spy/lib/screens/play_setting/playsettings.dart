import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:SpyGame/app.dart';

class PlaySettings extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return PlaySettingsState();
  }
}

class PlaySettingsState extends State<PlaySettings> {
  var totalplayers = 1;
  var spyplayers = 1;
  var _counter = 0.0;

  static const _Threshhold = 60.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set up'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('Number Of Players', style: Theme.of(context).textTheme.title),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            ),
            GestureDetector(
              child: Container(
                width: 70,
                height: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, style: BorderStyle.solid),
                ),
                child: Text('$totalplayers', style: Theme.of(context).textTheme.title),
              ),
              onVerticalDragUpdate: (details) => updateTotalCounter(details),
            ),
            SizedBox(height: 50),
            Container(
              child: Text('Number Of Spies', style: Theme.of(context).textTheme.title),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            ),
            GestureDetector(
              child: Container(
                width: 70,
                height: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, style: BorderStyle.solid),
                ),
                child: Text('$spyplayers', style: Theme.of(context).textTheme.title),
              ),
              onVerticalDragUpdate: (details) => updateSpyCounter(details),
            ),
            SizedBox(height: 50),
            RaisedButton(
              onPressed: () => onPlayPress(context),
              padding: EdgeInsets.all(20),
              child: Text('Play', style: Theme.of(context).textTheme.button),
            )
          ],
        ),
      ),
    );
  }

  //primaryDelta is positive when it goes down and negative when goes up
  void updateTotalCounter(DragUpdateDetails details)
  {
    double delta = details.primaryDelta;
    bool up = false;
    int players = totalplayers;

    if (delta.isNegative)
    {
      delta = -delta;
      up = true;
    }

    _counter += delta;
    if (_counter >= _Threshhold)
    {
      _counter = 0;
      players = (up) ? players + 1 : players - 1;
      setState(() {
        int _comp = max(1, spyplayers);
        totalplayers = (players < _comp) ? _comp : players;
      });
    }
  }

  void updateSpyCounter(DragUpdateDetails details)
  {
    double delta = details.primaryDelta;
    bool up = false;
    int players = spyplayers;

    if (delta.isNegative)
    {
      delta = -delta;
      up = true;
    }
    
    _counter += delta;
    if (_counter >= _Threshhold)
    {
      _counter = 0;
      players = (up) ? players + 1 : players - 1;
      setState(() {
        if (players > totalplayers)
          players = totalplayers;
        spyplayers = (players <= 1) ? 1 : players;
      });
    }
  }

  void onPlayPress(BuildContext context)
  {
    Navigator.pushNamed(context, RInfoRound, 
                        arguments: {'spyCount' : spyplayers,
                                    'totalCount' : totalplayers});
  }
}
