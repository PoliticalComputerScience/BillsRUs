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
          borderRadius: BorderRadius.circular(75.0),
          highlightColor: Colors.cyan,
          splashColor: Colors.teal,
          onTap: () {
            print("TAPPPED!!!!!!!!");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => new BillPage(bill: bill)),
            );
          },
          child: Padding(
            padding: EdgeInsets.all(6.0),
            child: Card(
                color: Colors.tealAccent,
                child: ListTile(
                    leading: Text("leading"),
                    title: Text(bill.title),
                    subtitle: Text(bill.category),
                    trailing: Text(bill.date),
                ),
            )
          ),
        )
        )
      );
  }
}