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
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(bill.title),
              Text(bill.date),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blueGrey,
              child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("Category: " + bill.category, style: TextStyle(fontSize: 20.0),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                          color: Colors.blue,
                          child: Text(bill.description),
                        ),
                    ),]
              ),
            ),
          ),
        ),
    );
  }
}