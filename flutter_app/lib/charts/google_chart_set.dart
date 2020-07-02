import 'package:flutter/material.dart';
import 'package:yc/charts/google_chart.dart';
import 'package:yc/charts/time_series_chart_detail.dart';

class GoogleChartSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Chart'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Card(
            child: RaisedButton(
              child: Text('line chart basic'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GoogleChart.withSampleData()));
              },
            ),
          ),
          Card(
            child: RaisedButton(
              child: Text('line chart detail'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TimeSeriesChartDetail.withSampleData()));
              },
            ),
          )
        ],
      ),
    );
  }
}
