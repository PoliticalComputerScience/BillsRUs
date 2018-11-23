import 'package:flutter/material.dart';
import './Bill.dart';
import './BillPage.dart';

class TileWidget extends StatelessWidget {
  final Bill bill;

  const TileWidget({this.bill});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: new BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            child: InkWell(
                borderRadius: BorderRadius.circular(75.0),
                highlightColor: Colors.cyan,
                splashColor: Colors.teal,
                onTap: () {
                  print("TAPPPED!!!!!!!!");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new BillPage(bill: bill)),
                  );
                },
                child: GridTile(
                  header: Center(child: Text("\n header")),
                  child: Container(child: Center(child: Text(bill.title))),
                  footer: Center(child: Text("footer \n")),
                )),
          ),
        ));
  }
}
