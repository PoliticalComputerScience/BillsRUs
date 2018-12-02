import 'package:flutter/material.dart';
import './Bill.dart';
import './CardWidget.dart';
import './TileWidget.dart';
import './Import.dart';

class Home extends StatefulWidget{
  Import imported;
  @override
  Home({this.imported});
  _HomeState createState() => new _HomeState(imported:imported);
}

class _HomeState extends State<Home> {
  Import imported;
  Widget bodyState;
  @override
  _HomeState({this.imported});
  Widget build(BuildContext context) {
    if (bodyState == null) {
      setState(() {
        print("null bodyState");
        bodyState = new ListView(children: imported.cards, padding: EdgeInsets.all(0.0),);
      });
    }
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[900],
          title: Text("PocketDocket")
        ),
        drawer: Drawer(
          child: DefaultTextStyle(
            style: new TextStyle(inherit:true, color: Colors.white),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.deepPurple, Colors.deepPurpleAccent]
                )
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Text("Pocket Docket", style: new TextStyle(color: Colors.white, fontSize: 35.0),),
                    decoration: BoxDecoration(
                      color: Colors.transparent
                    ),
                  ),
                  ListTile(
                    title: Text('Home', style: new TextStyle(color: Colors.white, fontSize: 24.0)),
                    onTap : () {
                      setState(() {bodyState = new ListView(children: imported.cards, padding: EdgeInsets.all(0.0));});
                      Navigator.of(context).pop();
                    }
                  ),
                  ListTile(
                    title: Text("Categories", style: new TextStyle(color: Colors.white, fontSize: 24.0)),
                    onTap : () {
                      setState(() {bodyState = new GridView.count(crossAxisCount: 2, children: imported.tiles);});
                      Navigator.of(context).pop();
                    }
                  )
                ]
              ),
            ),
          )
        ),
        body: bodyState
    );
  }
}