import 'package:flutter/material.dart';
import './CardWidget.dart';
import './TileWidget.dart';
import './Bill.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'PocketDocket',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'PocketDocket Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Bill> bills = [
    Bill(title: "title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
  ];
  final List<Widget> cards = new List<CardWidget>();
  final List<Widget> tiles = new List<TileWidget>();
  @override
  Widget build(BuildContext context) {

    for (Bill i in bills) {
      cards.add(new CardWidget(bill: i));
      tiles.add(new TileWidget(bill: i));
    }

    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text("PocketDocket"),
        backgroundColor: Colors.teal,
      ),
      body:
      new ListView(children: cards),
      //new GridView.count(crossAxisCount: 2, children: tiles)
    );
  }
}
