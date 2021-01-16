import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Application',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: SimpleApp(),
    );
  }
}

class SimpleApp extends StatefulWidget {
  @override
  _SimpleAppState createState() => _SimpleAppState();
}

class _SimpleAppState extends State<SimpleApp> {
  var defaultBackgroundColor = Colors.white;
  var colorBrightness = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Flutter Application'),
        centerTitle: true,
      ),
      body: InkWell(
        onTap: () {
          setState(() {
            Center(
              child: Container(
                color: defaultBackgroundColor =
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ),
            );
          });
        },
        child: Container(
          child: Center(
            child: Text('Hey there!'),
          ),
          color: defaultBackgroundColor,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Tap!'),
        onPressed: () {
          setState(() {
            Center(
              child: Container(
                  color: defaultBackgroundColor = defaultBackgroundColor
                      .withAlpha(colorBrightness = colorBrightness + 30)),
            );
          });
        },
      ),
    );
  }
}