import 'package:flutter/material.dart';

class CustomCountDemo extends StatelessWidget {
  final int count;
  final VoidCallback onCountSelected;
  final Function(int) onCountChange;

  // step 1
  // CustomCountDemo(this.count);

  // step 2
  // CustomCountDemo({@required this.count, this.onCountSelected});

  // step 3
  CustomCountDemo({
    @required this.count,
    @required this.onCountChange,
    this.onCountSelected,
  });

  @override
  Widget build(BuildContext context) {
    // step 1
    // return Text("$count");

    // step 2
    // return FlatButton(
    //   child: Text("$count"),
    //   onPressed: () => onCountSelected(),
    // );

    // step 3
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              onCountChange(1);
            },
          ),
          FlatButton(
            child: Text("$count"),
            onPressed: () => onCountSelected(),
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              onCountChange(-1);
            },
          ),
        ]);
  }
}
