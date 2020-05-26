import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioLibDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio lib'),
      ),
      body: DioLibStatefulwidget(),
    );
  }
}

class DioLibStatefulwidget extends StatefulWidget {
  @override
  _DioLibState createState() => _DioLibState();
}

class _DioLibState extends State<DioLibStatefulwidget> {
  String _result1 = 'result 1';
  String _result2 = 'result 2';
  String _result3 = 'result 3';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FlatButton(
            onPressed: () async {
              Response response = await Dio()
                  .get("https://jsonplaceholder.typicode.com/posts/1");
              print(response);

              setState(() {
                _result1 = response.data.toString();
              });
            },
            child: Text('Dio Requst I get')),
        Text('Result:$_result1'),
        FlatButton(
            onPressed: () async {
              Response response = await Dio().post(
                  "https://jsonplaceholder.typicode.com/posts/",
                  data: {"userId": 1});
              print(response);

              setState(() {
                _result2 = response.data.toString();
              });
            },
            child: Text('Dio Requst II post')),
        Text('Result:$_result2'),
        FlatButton(
            onPressed: () async {
              Dio dio = new Dio();
              dio.options.baseUrl = "https://jsonplaceholder.typicode.com/";
              dio.options.connectTimeout = 5000; //5s
              dio.options.receiveTimeout = 3000;
              Response response = await dio.post("posts/", data: {"userId": 1});
              print(response);

              setState(() {
                _result3 = response.data.toString();
              });
            },
            child: Text('Dio Requst III option')),
        Text('Result:$_result3')
      ]
    );
  }
}
