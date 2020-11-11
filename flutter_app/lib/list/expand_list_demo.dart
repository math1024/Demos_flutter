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
              onExpansionChanged: (value) {
                print(value);
              },
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              children: const <Widget>[
                ListTile(title: Text('One')),
                ListTile(title: Text('Two')),
                ListTile(title: Text('Free')),
                ListTile(title: Text('Four'))
              ]),
          ExpansionPanelList(
            children: [
              ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Panel A',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    );
                  },
                  body: Container(
                    padding: EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: Text('Content for Panel A.'),
                  ),
                  isExpanded: true),
            ],
          )
        ],
      ),
    );
  }
}
