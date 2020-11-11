import 'package:flutter/material.dart';

void main() {
  runApp(AppHome());
}

class AppHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('CodeSets'),
        ),
        body: ListView(
          children: [
            Text('home page')
          ],
        )
      )
    );
  }
}