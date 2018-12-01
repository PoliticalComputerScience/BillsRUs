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
        child: Container(
          color: Colors.tealAccent,
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
        );
  }
}
