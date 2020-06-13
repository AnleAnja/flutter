import 'main.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    return SingleChildScrollView(
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
    );
  }
}