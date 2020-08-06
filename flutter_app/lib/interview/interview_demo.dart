import 'package:flutter/material.dart';

class InterViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('InteractiveViewer'),
        ),
        body: Center(
          child: InteractiveViewer(
            boundaryMargin: EdgeInsets.all(20.0),
            minScale: 0.1,
            maxScale: 1.6,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.orange, Colors.red],
                  stops: <double>[0.0, 1.0],
                ),
              ),
            ),
          ),
        ));
  }
}
