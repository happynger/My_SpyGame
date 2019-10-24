import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final _loc;
  final _prof;

  InfoContainer(this._loc, this._prof);

  @override
  Widget build(BuildContext context) {
    var specialTextStyle = TextStyle(
      color: Colors.amber,
      fontFamily: Theme.of(context).textTheme.caption.fontFamily,
      fontWeight: FontWeight.w300,
      fontSize: Theme.of(context).textTheme.caption.fontSize,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Location: ', style: Theme.of(context).textTheme.caption),
            Text('$_loc', style: specialTextStyle)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Proffesion: ', style: Theme.of(context).textTheme.caption),
            Text('$_prof', style: specialTextStyle)
          ],
        )
      ],
    );
  }
}
