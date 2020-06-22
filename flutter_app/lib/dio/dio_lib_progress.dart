import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yc/dio/photo_info.dart';

class DioLibProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Dio Progressing')),
        body: Center(
          child: FutureBuilder(
              future: _fetchData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return _getList(snapshot.data);
                } else if (snapshot.connectionState == ConnectionState.active) {
                  return CircularProgressIndicator();
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else {
                  return Container();
                }
              }),
        ));
  }

  _fetchData() async {
    Response response =
        await Dio().get("https://jsonplaceholder.typicode.com/albums/1/photos");

    final jsonResponse = json.decode(json.encode(response.data));
    PhotosList photosList = PhotosList.fromJson(jsonResponse);
    debugPrint(photosList.photos[0].title);
    return photosList;
  }

  _getList(PhotosList photosList) {
    return ListView.builder(
      itemCount: photosList == null ? 10 : photosList.photos.length, // 数据长度
      itemBuilder: (context, item) {
        return ListTile(
          isThreeLine: false,
          leading: Icon(Icons.event),
          title:
              Text(photosList == null ? "empty" : photosList.photos[item].title),
          trailing: new Icon(Icons.keyboard_arrow_right),
        );
      },
    );
  }
}
