import 'package:flutter/material.dart';
import './Home.dart';

void main() => runApp(new PocketDocket());

class PocketDocket extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'PocketDocket',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Home()
    );
  }
}
