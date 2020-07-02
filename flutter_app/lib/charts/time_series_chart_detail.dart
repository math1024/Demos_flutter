import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class TimeSeriesChartDetail extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  TimeSeriesChartDetail(this.seriesList, {this.animate});

  factory TimeSeriesChartDetail.withSampleData() {
    return TimeSeriesChartDetail(
      _createSampleData(),
      // enable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('line time series chart')),
      body: Center(
        child: charts.TimeSeriesChart(
          seriesList,
          animate: animate,
          dateTimeFactory: const charts.LocalDateTimeFactory(),
          behaviors: [
            charts.SeriesLegend(
              position: charts.BehaviorPosition.top,
              cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
            ),
            // zoom
            charts.PanAndZoomBehavior(),
            // auxiliary line
            charts.LinePointHighlighter(
              drawFollowLinesAcrossChart: true,
              showHorizontalFollowLine:
                  charts.LinePointHighlighterFollowLineType.nearest,
              // symbolRenderer: CustomCircleSymbolRenderer()
            ),
          ],
        ),
      ),
    );
  }

  static List<charts.Series<TimeSeriesEvents, DateTime>> _createSampleData() {
    final data = [
      new TimeSeriesEvents(new DateTime(2017, 9, 19), 5),
      new TimeSeriesEvents(new DateTime(2017, 9, 26), 25),
      new TimeSeriesEvents(new DateTime(2017, 10, 3), 100),
      new TimeSeriesEvents(new DateTime(2017, 10, 10), 75),
    ];

    return [
      charts.Series<TimeSeriesEvents, DateTime>(
        id: 'Single Event',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesEvents sales, _) => sales.time,
        measureFn: (TimeSeriesEvents sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class TimeSeriesEvents {
  final DateTime time;
  final int sales;

  TimeSeriesEvents(this.time, this.sales);
}
