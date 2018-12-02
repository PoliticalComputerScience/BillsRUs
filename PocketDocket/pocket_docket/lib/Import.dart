import 'package:flutter/material.dart';
import './Bill.dart';
import './CardWidget.dart';
import './TileWidget.dart';

class Import {
    final List<Color> colors = [Colors.deepPurple[400], Colors.deepPurple[500], Colors.deepPurple[600], Colors.deepPurple[700], Colors.deepPurple[800]];
    final List<Bill> bills = [
    Bill(title: "Regarding consent to assemble outside the seat of government.",
        description: "Authorizes the Speaker of the House and the Majority Leader of the Senate, or their respective designees, to notify the Members of the House and the Senate, respectively, to assemble at a place outside the District of Columbia whenever, in their opinion, the public interest shall warrant it.",
        date: "12/10/2018",
        category: "Congress",
        tags: <String>["Congress", "Operations", "Organization"]),
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
      int count = 0;
        for (Bill i in bills) {
            count++;
            cards.add(new CardWidget(bill: i, color: colors[count % colors.length]));
            tiles.add(new TileWidget(bill: i, color: colors[count % colors.length]));
        }
    }
}

