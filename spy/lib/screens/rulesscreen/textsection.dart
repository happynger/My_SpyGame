import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final _text;

  TextSection(this._text);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.black45,
          style: BorderStyle.solid,
          width: 1.0
        )
      ),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 10),
        height: 70,
        child: Text('$_text', style: Theme.of(context).textTheme.body2),
      ),
    );
  }
}