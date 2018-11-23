import 'package:flutter/material.dart';
import './Bill.dart';
import './CardWidget.dart';
import './TileWidget.dart';

class Home extends StatelessWidget{
  final List<Bill> bills = [
    Bill(title: "Title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "Title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "Title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "Title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "Title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "Title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "Title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "Title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
    Bill(title: "Title", description: "here is the description of the bill", date: "12/10/2018", category: "Education", tags: <String>["school", "education", "common core"]),
  ];
  final List<Widget> cards = new List<CardWidget>();
  final List<Widget> tiles = new List<TileWidget>();
  @override
  Widget build(BuildContext context) {
    for (Bill i in bills) {
      cards.add(new CardWidget(bill: i));
      tiles.add(new TileWidget(bill: i));
    }
    return new DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                title: Text("PocketDocket"),
                bottom: TabBar(tabs: [
                  Tab(icon: Text("List")),
                  Tab(icon: Text("Grid")),
                ])
            ),
            body: TabBarView(children: [
              new ListView(children: cards),
              new GridView.count(crossAxisCount: 2, children: tiles)
            ]))
    );
  }
}