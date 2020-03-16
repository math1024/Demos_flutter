import 'package:flutter/material.dart';
import 'package:yc/list/list_builder.dart';

import 'list_tile.dart';

class ListDemoMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list demo main'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListBuilderDemo()));
              },
              child: Text('List Builder')),
          FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.greenAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListTileDemo()));
              },
              child: Text('List Tile',
                  style: TextStyle(color: Colors.white, fontSize: 16))),
        ],
      ),
    );
  }
}
