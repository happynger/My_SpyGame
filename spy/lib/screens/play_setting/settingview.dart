import 'package:flutter/material.dart';

class SettingSetter extends StatelessWidget {
  final String _title;
  final Function() _add;
  final Function() _subtract;
  final int _value;

  SettingSetter(this._title, this._value, this._add, this._subtract);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text('$_title', style: Theme.of(context).textTheme.title),
          margin: EdgeInsets.only(bottom: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10),
              width: 50,
              height: 50,
              child: RaisedButton(
                onPressed: _subtract,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                child: Icon(Icons.remove),
              ),
            ),
            Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, style: BorderStyle.solid, width: 2)
              ),
              child: Text('$_value', style: Theme.of(context).textTheme.title)
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              width: 50,
              height: 50,
              child: RaisedButton(
                onPressed: _add,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                child: Icon(Icons.add),
              ),
            ),
          ],
        )
      ],
    );
  }
}