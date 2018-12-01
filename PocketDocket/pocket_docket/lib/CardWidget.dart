import 'package:flutter/material.dart';
import './Bill.dart';
import './BillPage.dart';

class CardWidget extends StatelessWidget {
  final Bill bill;

  const CardWidget({
    this.bill,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 125.0,
        child: InkWell(
          highlightColor: Colors.cyan,
          splashColor: Colors.teal,
          onTap: () {
            print("TAPPPED!!!!!!!!");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => new BillPage(bill: bill)),
            );
          },
          child: Container(
              child: Card(
                margin: EdgeInsets.all(0.0),
                  color: Colors.lightBlueAccent,
                  child: ListTile(
                      leading: Text("leading"),
                      title: Text(bill.title),
                      subtitle: Text(bill.category),
                      trailing: Text(bill.date),
                  ),
              ),
            )
          ),
        )
      );
  }
}