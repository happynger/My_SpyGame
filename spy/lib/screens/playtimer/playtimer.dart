import 'dart:async';

import 'package:flutter/material.dart';
import 'package:SpyGame/app.dart';

class PlayTimer extends StatefulWidget {
  PlayTimer({Key key}) : super(key: key);

  @override
  _PlayTimerState createState() => _PlayTimerState();
}

class _PlayTimerState extends State<PlayTimer> {
  Duration duration;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    duration = Duration(minutes: 8);
    _timer = Timer.periodic(Duration(seconds: 1), (timer)
    {
      setState(()
      {
        if (duration.inSeconds <= 0)
        {
          timer.cancel();
          Navigator.pushNamedAndRemoveUntil(context, REnd, ModalRoute.withName(RHome));
        }
        else
          duration -= Duration(seconds: 1); 
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              '${_getTimeFormat(duration)}',
              style: Theme.of(context).textTheme.display2,
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.all(20),
            child: FloatingActionButton(
              heroTag: 'Back',
              onPressed: () {Navigator.maybePop(context);},
              child: Icon(Icons.arrow_back),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.all(20),
            child: FloatingActionButton(
              heroTag: 'Next',
              onPressed: () {moveOn(_timer);},
              child: Icon(Icons.arrow_forward)
            ),
          )
        ],
      ),
    );
  }

  void moveOn(Timer timer)
  {
    timer.cancel();
    Navigator.pushNamedAndRemoveUntil(context, REnd, ModalRoute.withName(RHome));
  }

  String _getTimeFormat(Duration time)
  {
    String tmp = '';
    var sec = time.inSeconds.remainder(60);
    var min = time.inMinutes.remainder(60);
    if (sec < 10)
      tmp = '0';
    
    return '$min:$tmp$sec';
  }
}
