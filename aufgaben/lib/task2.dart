import 'main.dart';
import 'package:flutter/material.dart';

class SizeChange extends StatefulWidget {
  @override
  _SizeState createState() => _SizeState();
}

class _SizeState extends State<SizeChange> {
  int _size = 100;

  //TODO: Aufgabe 3
  //Methode für Änderung von _size implementieren
  //für 3 Buttons: feste Größen
  //für + und -: Größe +/- 1
  //Ziel: Kommunikation von Daten zwischen verschiedenen Widgets, StatefulWidgets

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        //TODO: Aufgabe 2
        //Fünf Buttons implementieren (3 feste Größen, + und -)
        //Ziel: Verständnis für Widget Tree
        child: Text(
          'Die gewünschte Größe ist $_size',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
