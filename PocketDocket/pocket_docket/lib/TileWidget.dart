import 'package:flutter/material.dart';
import './Bill.dart';

class TileWidget extends StatelessWidget {
  final Bill bill;

  const TileWidget({
    this.bill
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),

      child: Container(
        decoration: new BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        child: GridTile(
          header: Center(child: Text("\n header")),
          child: Container(child: Center(child: Text(bill.title))),
          footer: Center(child: Text("footer \n")),
        )
      ),
    );
  }
}
