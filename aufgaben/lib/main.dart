import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:workshop/task2.dart';

import 'task1.dart';

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
            body: SingleChildScrollView(
              child: Center(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StatelessTask()));
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StatefulTask()));
                    },
                    child: Text(
                      'Aufgabe 2',
                      style: TextStyle(fontSize: 20.0),
                    ))
              ])),
            )));
  }
}

class StatelessTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gallery = 'Galerie';
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(gallery),
              backgroundColor: Colors.lightGreen,
            ),
            body: Gallery()));
  }
}

class StatefulTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = 'Bildgröße';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(size),
          backgroundColor: Colors.deepOrange,
        ),
        body: SizeChange(),
      ),
    );
  }
}
