import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class UseTela1Page extends StatefulWidget {
  static const routeName = '/use-tela-1';
  const UseTela1Page({Key? key}) : super(key: key);

  @override
  State<UseTela1Page> createState() => _UseTela1PageState();
}

class _UseTela1PageState extends State<UseTela1Page> {
  List<SalesData> _chartData = [];
  late TooltipBehavior _tooltipBehavior;
  late TrackballBehavior _trackballBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
      canShowMarker: true,
    );
    _trackballBehavior = TrackballBehavior(
      enable: true,
      markerSettings: const TrackballMarkerSettings(markerVisibility: TrackballVisibilityMode.visible, width: 40),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Use Tela'),
        ),
        body: SfCartesianChart(
          legend: Legend(isVisible: true),
          enableAxisAnimation: true,
          tooltipBehavior: _tooltipBehavior,
          trackballBehavior: _trackballBehavior,
          series: [
            LineSeries(
              name: 'Sales',
              dataSource: _chartData,
              onPointTap: (ChartPointDetails details) {
                print(details.pointIndex);
              },
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales,
              dataLabelSettings: const DataLabelSettings(isVisible: false),
              enableTooltip: true,
            )
          ],
          primaryXAxis: NumericAxis(
            isVisible: false,
          ),
          primaryYAxis: NumericAxis(
            numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
            desiredIntervals: _chartData.length,
            edgeLabelPlacement: EdgeLabelPlacement.shift,
          ),
        ),
      ),
    );
  }

  List<SalesData> getChartData() {
    return [
      SalesData(2017, 9000),
      SalesData(2018, 10000),
      SalesData(2019, 15000),
      SalesData(2020, 25000),
      SalesData(2021, 30000),
    ];
  }
}

class SalesData {
  final double year;
  final double sales;

  SalesData(this.year, this.sales);
}
