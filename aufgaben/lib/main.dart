import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final title = 'PictureBox';
    return MaterialApp(title: title, routes: {
      '/': (context) => StartScreen(),
      '/aufgabe1': (context) => StatelessTask(),
      '/aufgabe2': (context) => StatefulTask()
    });
  }
}

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Workshop'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Herzlich Willkommen!',
              style: Theme.of(context).textTheme.headline2),
        ),
        FlutterLogo(
          size: 250,
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
            child: Text(
                'Herzlich Willkommen zum Workshop "Flutter im Web" im Rahmen des Moduls "Web Technologien" im Masterstudiengang Medieninformatik mit dem Schwerpunkt "Weaving the Web" an der Technischen Hochschule Köln. Bitte stellt sicher, dass ihr alle Vorbereitungen getroffen habt und den Code ausführen könnt. Die folgenden Buttons sollten euch zu den Aufgaben für den Workshop weiterleiten. Alternativ könnt ihr über den Pfad um "/aufgabe1" oder "/aufgabe2" in eurer URL-Leiste ergänzen und jeweils die Seite neu laden um auf diesen Screen zurückzukehren.',
                style: TextStyle(fontSize: 17.0))),
        FlatButton(
            color: Colors.blueAccent,
            textColor: Colors.white,
            padding: EdgeInsets.all(15.0),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StatelessTask()));
            },
            child: Text(
              'Aufgabe 1',
              style: TextStyle(fontSize: 20.0),
            )),
        Padding(padding: EdgeInsets.all(10.0)),
        FlatButton(
            color: Colors.blueAccent,
            textColor: Colors.white,
            padding: EdgeInsets.all(15.0),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StatefulTask()));
            },
            child: Text(
              'Aufgabe 2',
              style: TextStyle(fontSize: 20.0),
            ))
      ])),
    ));
  }
}

class StatelessTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gallery = 'Galerie';
    List<String> _urls = [
      'https://images.unsplash.com/photo-1589647762067-f458bb6af28b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1476&q=80',
      'https://images.unsplash.com/photo-1567508681660-161b8d4e3b82?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      'https://images.unsplash.com/photo-1590697909890-ba3b41873c5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=970&q=80',
      'https://images.unsplash.com/photo-1589443122203-74c569ccaddc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      'https://images.unsplash.com/photo-1580573852992-43f0f883725b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1114&q=80',
      'https://images.unsplash.com/photo-1566391349500-9e3310d37c5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      'https://images.unsplash.com/photo-1553683819-80d600fc9dda?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      'https://images.unsplash.com/photo-1588329056032-b0f58d828a44?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(gallery),
              backgroundColor: Colors.lightGreen,
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: _urls.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        //TODO: Aufgabe 1
                        //Styling in Flutter üben
                        //Ziel: Bildergalerie
                      },
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                            textColor: Colors.lightGreen,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StartScreen()));
                            },
                            child: Icon(Icons.home)),
                        FlatButton(
                            textColor: Colors.lightGreen,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StatefulTask()));
                            },
                            child: Icon(Icons.arrow_forward_ios))
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}

class StatefulTask extends StatefulWidget {
  @override
  _SizeState createState() => _SizeState();
}

class _SizeState extends State<StatefulTask> {
  int _size = 100;

  //TODO: Aufgabe 3
  //Methode für Änderung von _size implementieren
  //für 3 Buttons: feste Größen
  //für + und -: Größe +/- 1
  //Ziel: Kommunikation von Daten zwischen verschiedenen Widgets, StatefulWidgets

  @override
  Widget build(BuildContext context) {
    final size = 'Bildgröße';
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(size),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        //TODO: Aufgabe 2
        //Fünf Buttons implementieren (3 feste Größen, + und -)
        //Ziel: Verständnis für Widget Tree
        child: Text(
          'Die gewünschte Größe ist $_size',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    ));
  }
}
