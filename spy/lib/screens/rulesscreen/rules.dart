import 'package:flutter/material.dart';
import 'package:SpyGame/screens/rulesscreen/textsection.dart';

class Rules extends StatelessWidget {
  const Rules({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rules'),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          TextSection('Rules are simple.'),
          TextSection('Choose the amount of players that will participate and how many spies can be in your midst'),
          TextSection('Once you are ready press play!'),
          TextSection('You will be then presented with a blurred "Case" file hold the panel to reveal your role'),
          TextSection('Pass the phone around and let everyone get a role'),
          TextSection('Once the everyone saw your roles, timer will start shortly'),
          TextSection('You only have some amount of time before the spy gets away'),
          TextSection("You know that the spies don't know the location"),
          TextSection('Use that to your advantage! And ask questions only a real bystander can guess'),
          TextSection('At the end of the time you have to find all of the spies!')
        ],
      ),
    );
  }
}