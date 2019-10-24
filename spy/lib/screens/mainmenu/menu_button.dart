import 'package:flutter/material.dart';

class MainMenuButton extends StatelessWidget {
  final Function() _delegate;
  final String _name;
  final double rad;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  MainMenuButton(this._name, this._delegate,
                 {this.rad = 8, this.margin = const EdgeInsets.only(top: 10, bottom: 10),
                                this.padding = const EdgeInsets.all(10)});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(rad)),
          padding: padding,
          onPressed: _delegate,
          child: Text('$_name', style: TextStyle(fontSize: 26)),
        )
    );
  }
}