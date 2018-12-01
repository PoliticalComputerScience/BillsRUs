import 'package:flutter/material.dart';
import './Bill.dart';
import './BillPage.dart';

class TileWidget extends StatelessWidget {
  final Bill bill;
  final Color color;

  const TileWidget({this.bill, this.color});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        color: color,
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
            child: DefaultTextStyle(
              style: new TextStyle(inherit: true, color: Colors.white),
              child: GridTile(
                //header: Center(child: Text("\n header")),
                child: Container(child: Center(child: Text("Category"))),
                //footer: Center(child: Text("footer \n")),
              ),
            )),
      ),
    );
  }
}
