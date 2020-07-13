import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(
    new MaterialApp(
      home: new AppHome(),
      showSemanticsDebugger: false,
    ),
  );
}

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new ListView(children: [
        FlatButton(
          onPressed: () {
            debugDumpApp();
          },
          child: new Text('debugDumpApp'),
        ),
        FlatButton(
          child: Text('debugDumpRenderTree'),
          onPressed: () {
            debugDumpRenderTree();
          },
        ),
        FlatButton(
            onPressed: () {
              debugDumpLayerTree();
            },
            child: Text('debugDumpLayerTree')),
        RaisedButton(
          onPressed: () =>
              debugDumpSemanticsTree(DebugSemanticsDumpOrder.traversalOrder),
          child: Text('DebugSemanticsDumpOrder'),
        ),
        ActionChip(
            label: Text('ActionChip'),
            avatar: Icon(Icons.details),
            tooltip: 'ActionChip Button',
            onPressed: () {
              print('ActionChip Sample');
            })
      ]),
    );
  }
}
