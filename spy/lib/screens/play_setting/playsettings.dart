import 'dart:math';

import 'package:SpyGame/screens/play_setting/settingview.dart';
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
            SettingSetter('Number Of Players', totalplayers, () => addTotalCounter(), () => subTotalCounter()),
            SizedBox(height: 50),
            SettingSetter('Number Of Spies', spyplayers, () => addSpyCounter(), () => subSpyCounter()),
            SizedBox(height: 50),
            RaisedButton(
              onPressed: () => onPlayPress(context),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(20),
              child: Text('Play'),
            )
          ],
        ),
      ),
    );
  }

  void addTotalCounter()
  {
    int players = totalplayers;
    players++;

    setState(() {
      int _comp = max(1, spyplayers);
      totalplayers = (players < _comp) ? _comp : players;
    });
  }

  void subTotalCounter()
  {
    int players = totalplayers;
    players--;

    setState(() {
      int _comp = max(1, spyplayers);
      totalplayers = (players < _comp) ? _comp : players;
    });
  }

  void addSpyCounter()
  {
    int players = spyplayers;
    players++;

    setState(() {
      players = (players > totalplayers) ? totalplayers : players;
      spyplayers = (players <= 1) ? 1 : players;
    });
  }

  void subSpyCounter()
  {
    int players = spyplayers;
    players--;

    setState(() {
      players = (players > totalplayers) ? totalplayers : players;
      spyplayers = (players <= 1) ? 1 : players;
    });
  }

  void onPlayPress(BuildContext context)
  {
    Navigator.pushNamed(context, RInfoRound, 
                        arguments: {'spyCount' : spyplayers,
                                    'totalCount' : totalplayers});
  }
}
