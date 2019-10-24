import 'package:flutter/material.dart';
import 'package:SpyGame/app.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('The game has ended!', style: Theme.of(context).textTheme.title),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text('Restart?'),
              onPressed: () {Navigator.pushNamedAndRemoveUntil(context, RHome, (_) => false);},
            )
          ],
        )
      ),
    );
  }
}