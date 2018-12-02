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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(bill.title, style: new TextStyle(fontSize: 24.0), textAlign: TextAlign.center,),
                    Padding(padding: EdgeInsets.only(top: 5.0),),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Text("Category: ", style: new TextStyle(fontSize: 22.0),),
                        ),
                        Flexible(
                          child: Center(
                            child: Text(bill.category,
                                   maxLines: 2,
                                   overflow: TextOverflow.ellipsis,
                                   softWrap: false,
                                  textAlign: TextAlign.left,),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                            child: Text("Date: ", style: new TextStyle(fontSize: 22.0),)),
                        Flexible(
                            child: Center(child: Text(bill.date, textAlign: TextAlign.left))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 5.0),),
            Container(
              padding: const EdgeInsets.only(top: 8.0),
              color: Colors.deepPurple[600],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Description:", style: new TextStyle(color: Colors.white, fontSize: 18.0)),
                  Padding(padding: EdgeInsets.only(top: 5.0),),
                  Text(bill.description, style: new TextStyle(color: Colors.white, fontSize: 14.0),),
                ],
              ),
            ),
          ]),
        ));
  }
}
