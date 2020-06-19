import 'package:flutter/material.dart';
import 'package:yc/login/mvc/mvc_login_page.dart';

class EntrancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('State Select Entrance'), backgroundColor: Colors.cyan,brightness: Brightness.dark,),
        backgroundColor: Colors.amberAccent,
        body: Center(
          child: Column(
            children: [
              RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MvcLoginPage()));
                  },
                  child: Text('MVC')),
              RaisedButton(onPressed: () {}, child: Text('MVP')),
              RaisedButton(onPressed: () {}, child: Text('BLOC')),
              RaisedButton(onPressed: () {}, child: Text('REDUX')),
          ],
        )));
  }
}
