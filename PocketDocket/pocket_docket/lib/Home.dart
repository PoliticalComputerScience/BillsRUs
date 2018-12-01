import 'package:flutter/material.dart';
import './Bill.dart';
import './CardWidget.dart';
import './TileWidget.dart';
import './Import.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  Import imported = new Import();
  Widget bodyState;
  @override
  Widget build(BuildContext context) {
    imported.loadBills();
    if (bodyState == null) {
      setState(() {
        bodyState = new ListView(children: imported.cards, padding: EdgeInsets.all(0.0),);
      });
    }
    return new Scaffold(
        appBar: AppBar(
          title: Text("PocketDocket")
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("Pocket Docket"),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap : () {
                  setState(() {bodyState = new ListView(children: imported.cards, padding: EdgeInsets.all(0.0));});
                  Navigator.of(context).pop();
                }
              ),
              ListTile(
                title: Text("Categories"),
                onTap : () {
                  setState(() {bodyState = new GridView.count(crossAxisCount: 2, children: imported.tiles);});
                  Navigator.of(context).pop();
                }
              )
            ]
          )
        ),
        body: bodyState
    );
  }
}