import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioLibProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Dio Progressing')),
        body: Column(children: [
          RaisedButton(
            onPressed: () {
              _fetchData();
            },
            child: Text('fetch data'),
          ),
          Expanded(
            child: _getList(),
          )
        ]));
  }

  _fetchData() async {
    Response response =
        await Dio().get("https://jsonplaceholder.typicode.com/albums/1/photos");
    debugPrint(response.toString());
  }

  _getList() {
    return ListView.builder(
      itemCount: 10, // 数据长度
      itemBuilder: (context, item) {
        return ListTile(
          isThreeLine: false,
          leading: Icon(Icons.event),
          title: Text('strItem'),
          trailing: new Icon(Icons.keyboard_arrow_right),
        );
      },
    );
  }
}
