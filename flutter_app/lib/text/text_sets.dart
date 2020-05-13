import 'package:flutter/material.dart';

class TextSets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Text Sets')
      ),
      body: Column(
        children: [
            TextField(
                decoration: InputDecoration(
                   contentPadding: EdgeInsets.all(10.0),
                   icon: Icon(Icons.search),
              labelText: 'please input',
            ),
            autofocus: false,)
        ],
      ),
    );
  }
  
}