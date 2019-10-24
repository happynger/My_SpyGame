import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:SpyGame/screens/inforound/Eblur.dart';
import 'package:SpyGame/screens/inforound/InfoContainer.dart';
import 'package:SpyGame/screens/inforound/utilFuncs.dart';
import 'package:SpyGame/app.dart';

class InfoRound extends StatefulWidget
{
  final int _totalSpies;
  final int _totalPlayers;
  InfoRound(this._totalSpies, this._totalPlayers);
  @override
  State<StatefulWidget> createState() => _InfoRoundState(_totalSpies, _totalPlayers);
}

class _InfoRoundState extends State<InfoRound>
{
  final int _totalSpies;
  final int _totalPlayers;

  List<Info> infotable;

  String _location = 'PlaceHolderLocation';
  String _proffesion = 'Bystander';
  int counter = 0;
  bool _open = false;
  bool _colorDis = false;

  var _alignment = Alignment.center;
  var _margin = EdgeInsets.zero;
  var _color;

  _InfoRoundState(this._totalSpies, this._totalPlayers);

  @override
  void initState()
  {
    super.initState();
    infotable = getInfo(_totalPlayers, _totalSpies);
  }

  @override
  Widget build(BuildContext context) {
    _color = (!_colorDis) ? Theme.of(context).accentColor : Theme.of(context).disabledColor;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          InfoContainer(_location, _proffesion),
          AnimatedContainer(
            margin: _margin,
            duration: Duration(milliseconds: 650),
            alignment: _alignment,
            child: Eblur(),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              backgroundColor: _color,
              heroTag: 'OpenCaseB',
              onPressed: () => _onOpenCase(),
              child: Text('Open'),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              backgroundColor: _color,
              heroTag: 'CloseCaseB',
              onPressed: () => _onCloseCase(),
              child: Text('Close'),
            ),
          ),
        ],
      ),
    );
  }

  void _onOpenCase()
  {
    if (_open == true)
      return;
    
    setState(() {
      _location = infotable[counter].location;
      _proffesion = (infotable[counter].spy) ? 'Spy' : 'Bystander';
      _alignment = Alignment.bottomCenter;
      _margin = EdgeInsets.only(bottom: 10);
      _open = true;
    });
    counter++;
    if (counter == _totalPlayers)
    {
      _colorDis = true;
      Future.delayed(Duration(seconds: 5)).whenComplete(() => Navigator.popAndPushNamed(context, RPlay));
    }
  }

  void _onCloseCase()
  {
    if (_open == false)
      return;

    setState(() {
      _alignment = Alignment.center;
      _margin = EdgeInsets.zero;
      _open = false;
    });
  }
}