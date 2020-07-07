import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SyncFusionLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('line chart')),
        body: SizedBox(
          height: 500,
          child: getSfChart(),
        ));
  }

  getSfChart() {
    return SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        // Chart title
        title: ChartTitle(text: 'Half yearly sales analysis'),
        // Enable legend
        legend: Legend(isVisible: true),
        // Enable tooltip
        tooltipBehavior: TooltipBehavior(enable: true),
        zoomPanBehavior: ZoomPanBehavior(
            enablePinching: true,
            enablePanning: true,
            // enableMouseWheelZooming: true,
            zoomMode: ZoomMode.x),
        crosshairBehavior: CrosshairBehavior(
          lineType: CrosshairLineType.horizontal, //横向选择指示器
          enable: true,
          shouldAlwaysShow: false, //十字架始终显示(横向选择指示器)
          activationMode: ActivationMode.singleTap,
        ),
        trackballBehavior: TrackballBehavior(
          lineType: TrackballLineType.vertical, //纵向选择指示器
          activationMode: ActivationMode.singleTap,
          enable: true,
          tooltipAlignment: ChartAlignment.near,
          shouldAlwaysShow: true, //跟踪球始终显示(纵向选择指示器)
          tooltipDisplayMode:
              TrackballDisplayMode.groupAllPoints, //工具提示模式(全部分组)
        ),
        series: <ChartSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
              name: 'first',
              dataSource: <SalesData>[
                SalesData('Jan', 35),
                SalesData('Feb', 28),
                SalesData('Mar', 34),
                SalesData('Apr', 32),
                SalesData('May', 40)
              ],
              dashArray: [10, 3, 3, 3],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales,
              markerSettings: MarkerSettings(isVisible: true),
              // Enable data label
              dataLabelSettings: DataLabelSettings(isVisible: true)),
          SplineSeries<SalesData, String>(
              name: 'second',
              dataSource: <SalesData>[
                SalesData('Jan', 125),
                SalesData('Feb', 18),
                SalesData('Mar', 24),
                SalesData('Apr', 22),
                SalesData('May', 30)
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales,
              // Enable data label
              dataLabelSettings: DataLabelSettings(isVisible: true)),
          SplineAreaSeries<SalesData, String>(
              name: 'area',
              dataSource: <SalesData>[
                SalesData('Jan', 65),
                SalesData('Feb', 28),
                SalesData('Mar', 54),
                SalesData('Apr', 22),
                SalesData('May', 10)
              ],
              opacity: 0.1,
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales,)
        ]);
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
