import 'package:flutter/material.dart';
import './Bill.dart';
import './BillPage.dart';

class CardWidget extends StatelessWidget {
  final Bill bill;
  final Color color;

  const CardWidget({
    this.bill,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Container(
          height: 100.0,
          child: InkWell(
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
              child: Container(
                child: Card(
                  shape: new Border.all(color: Colors.transparent),
                  margin: EdgeInsets.all(0.0),
                  color: color,
                  child: DefaultTextStyle(
                    style: new TextStyle(inherit: true, color: Colors.white),
                    child: ListTile(
                      //leading: Text("leading"),
                      title: Text(
                        bill.title,
                        style:
                            new TextStyle(color: Colors.white, fontSize: 18.0),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(bill.category,
                              style: new TextStyle(color: Colors.white)),
                          Text("Vote: " + bill.date,
                              style: new TextStyle(color: Colors.white)),
                        ],
                      ),
                      //trailing:
                    ),
                  ),
                ),
              )),
        ));
  }
}
