import 'package:flutter/material.dart';

class ListForDriver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list test driver'),
      ),
      body: _buildList(List<String>.generate(1000, (i) => "Item $i")),
    );
  }

  _buildList(List<String> list) {
    return ListView.builder(
      key: Key('long_list'),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            '${list[index]}',
            // Add a key to the Text widget for each item. This makes
            // it possible to look for a particular item in the list
            // and verify that the text is correct
            key: Key('item_${index}_text'),
          ),
        );
      },
    );
  }
}
