import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Row Demo'),
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.battery_alert),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.battery_alert),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.battery_alert),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
