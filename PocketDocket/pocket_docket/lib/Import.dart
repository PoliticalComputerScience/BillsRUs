import 'package:flutter/material.dart';
import './Bill.dart';
import './CardWidget.dart';
import './TileWidget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase/firebase_io.dart';
import 'dart:async';

class Import {
    final List<Color> colors = [Colors.deepPurple[300], Colors.deepPurple[500], Colors.deepPurple[600], Colors.deepPurple[700], Colors.deepPurple[600], Colors.deepPurple[500]];
    final List<Bill> bills = new List<Bill>();
    //bills.add(Bill(title: "Regarding consent to assemble outside the seat of government.", description: "Authorizes the Speaker of the House and the Majority Leader of the Senate, or their respective designees, to notify the Members of the House and the Senate, respectively, to assemble at a place outside the District of Columbia whenever, in their opinion, the public interest shall warrant it.", date: "12/10/2018", category: "Congress", tags: <String>["Congress", "Operations", "Organization"]))
    final List<Widget> cards = new List<CardWidget>();
    final List<Widget> tiles = new List<TileWidget>();

    void loadBills(List<Bill> billList) {
      print(billList.length);
      print(billList.length);
      int count = 0;
        for (Bill i in billList) {
            count++;
            cards.add(new CardWidget(bill: i, color: colors[count % colors.length]));
            tiles.add(new TileWidget(bill: i, color: colors[count % colors.length]));
        }
    }
    Future<List<Bill>> getBills() async {
      String titleURL = 'https://pocketdocket-db.firebaseio.com/bill1/official_title.json';
      String descriptionURL = 'https://pocketdocket-db.firebaseio.com/bill1/summary/text.json';
      String dateURL = 'https://pocketdocket-db.firebaseio.com/bill1/introduced_at.json';
      String categoryURL = 'https://pocketdocket-db.firebaseio.com/bill1/subjects_top_term.json';
      String tagsURL = 'https://pocketdocket-db.firebaseio.com/bill1/subjects.json';
      for(int i = 0; i < 8; i++) {
        var fbClient = FirebaseClient.anonymous(); // FirebaseClient.anonymous() is also available
        // GET
        var title = await fbClient.get(titleURL);
        var description = await fbClient.get(descriptionURL);
        var date = await fbClient.get(dateURL);
        var category = await fbClient.get(categoryURL);
        var tags1 = await fbClient.get(tagsURL);
        List<String> tags = new List<String>.from(tags1);

        Bill newBill = new Bill(
            title: title,
            description: description,
            date: date,
            category: category,
            tags: tags);
        bills.add(newBill);
        print(newBill.title + " " + newBill.date);

        titleURL = next(titleURL);
        descriptionURL = next(descriptionURL);
        dateURL = next(dateURL);
        categoryURL = next(categoryURL);
        tagsURL = next(tagsURL);
      }
        //loadBills();
      return bills;
    }
    String next(String url) {
      String prev = url[43];
      int next = int.parse(prev) + 1;
      return url.replaceAll(prev, next.toString());
    }
}

