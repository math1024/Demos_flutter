import 'package:flutter/material.dart';

class RaisedButtonSets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RasiedButton Set")),
      body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('basic RasiedButton',),
                color: Colors.grey,
                textColor: Colors.greenAccent,
                onPressed: () {
                  print("object");
                },),
              RaisedButton(
                child: Text('Disable Button', style: TextStyle(fontSize: 12)),
                onPressed: null,),

              RaisedButton(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF0D47A1),
                        Color(0xFF1976D2),
                        Color(0xFF42A5F5),
                      ],
                    ),
                  ),
                  child: Text('Rich Style', style: TextStyle(fontSize: 18)),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(20.0),
                onPressed: (){})
             ],
      )),
    );
  }
}
