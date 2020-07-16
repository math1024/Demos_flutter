import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Column Demo'),
        ),
        body: Container(
          color: Colors.amberAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                icon: Icon(Icons.battery_alert),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.access_time),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.account_balance_wallet),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
