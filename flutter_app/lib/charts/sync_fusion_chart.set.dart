import 'package:flutter/material.dart';
import 'package:yc/charts/sync_fusion_line_chart.dart';
import 'package:yc/charts/syncfusion_chart.dart';

class SyncFusionChartSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SyncFusion Chart Lib')),
      body: ListView(
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SyncFusionChart()));
            },
            child: Text('basic'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SyncFusionLineChart()));
            },
            child: Text('more'),
          ),
        ],
      ),
    );
  }
}
