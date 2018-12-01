import 'package:flutter/material.dart';
import './Bill.dart';
import './CardWidget.dart';
import './TileWidget.dart';

class Import {
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
    void loadBills() {
        for (Bill i in bills) {
            cards.add(new CardWidget(bill: i));
            tiles.add(new TileWidget(bill: i));
        }
    }
}

