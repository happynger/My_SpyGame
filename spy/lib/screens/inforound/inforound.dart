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

  var _alignment = Alignment.center;

  _InfoRoundState(this._totalSpies, this._totalPlayers);

  @override
  void initState()
  {
    super.initState();
    infotable = getInfo(_totalPlayers, _totalSpies);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          InfoContainer(_location, _proffesion),
          AnimatedContainer(
            duration: Duration(milliseconds: 750),
            alignment: _alignment,
            child: GestureDetector(
              child: Eblur(),
              onVerticalDragStart: (_) => _onOpenCase(),
              onVerticalDragEnd: (_) => _onCloseCase(),
              onVerticalDragCancel: () => _onCloseCase(),
            ),
          ),
        ],
      ),
    );
  }

  void _onOpenCase()
  {
    setState(() {
      _location = infotable[counter].location;
      _proffesion = (infotable[counter].spy) ? 'Spy' : 'Bystander';
      _alignment = Alignment.bottomCenter;
    });
    counter++;
    if (counter == _totalPlayers)
    {
      Future.delayed(Duration(seconds: 5)).whenComplete(() => Navigator.popAndPushNamed(context, RPlay));
    }
  }

  void _onCloseCase()
  {
    setState(() {
      _alignment = Alignment.center;
    });
  }
}