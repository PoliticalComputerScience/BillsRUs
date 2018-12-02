import 'package:flutter/material.dart';
import './Bill.dart';

class BillPage extends StatelessWidget {
  final Bill bill;
  const BillPage({
    this.bill,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepPurple[900],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.deepPurple[600],
          child: Column(children: <Widget>[
            Container(
              color: Colors.deepPurple[700],
              child: DefaultTextStyle(
                style: new TextStyle(
                    inherit: true, color: Colors.white, fontSize: 18.0),
                child: Column(
                  children: <Widget>[
                    Text(bill.title, style: new TextStyle(fontSize: 28.0),),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Category: " + bill.category),
                          Text(bill.date)
                        ]),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(bill.description, style: new TextStyle(color: Colors.white, fontSize: 14.0),),
            ),
          ]),
        ));
  }
}
