import 'package:amap_all_fluttify/amap_all_fluttify.dart';
import 'package:flutter/material.dart';

class AmapDemo extends StatefulWidget {
  @override
  _AmapDemoState createState() => _AmapDemoState();
}

class _AmapDemoState extends State<AmapDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('amap'),
      ),
      body: AmapView(),
    );
  }
}
