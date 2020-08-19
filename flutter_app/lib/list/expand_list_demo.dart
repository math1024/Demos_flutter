import 'package:flutter/material.dart';

class ExpandListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion tile'),
      ),
      body: ListView(
        children: [
          ExpansionTile(
              title: const Text('Sublist'),
              leading: Icon(Icons.ac_unit),
              // backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: const <Widget>[
                ListTile(title: Text('One')),
                ListTile(title: Text('Two')),
                ListTile(title: Text('Free')),
                ListTile(title: Text('Four'))
              ]),
          ExpansionTile(
              title: const Text('Sublist2'),
              trailing: Icon(Icons.account_balance),
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: const <Widget>[
                ListTile(title: Text('One')),
                ListTile(title: Text('Two')),
                ListTile(title: Text('Free')),
                ListTile(title: Text('Four'))
              ]),
        ],
      ),
    );
  }
}
