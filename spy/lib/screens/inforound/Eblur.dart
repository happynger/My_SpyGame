import 'dart:ui';

import 'package:flutter/material.dart';

class Eblur extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text('Open The Case',
                style: Theme.of(context).textTheme.title),
          ),
        ),
      ),
    );
  }
}