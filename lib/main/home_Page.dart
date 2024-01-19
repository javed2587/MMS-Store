import 'package:flutter/material.dart';
// import 'package:mms_store/models/barchart.dart';
// import 'package:charts_flutter/flutter.dart' as charts;

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // List<charts.Series<BarChart, String>> series = [
    //   charts.Series(
    //     id: "financial",
    //     data: data,
    //     domainFn: (BarChart series, _) => series.year,
    //     measureFn: (BarChart series, _) => series.financial,
    //     colorFn: (BarChart series, _) => series.color,
    //   ),
    // ];

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 80,
          ),
          Image.asset('assets/images/12.PNG'),
          // charts.BarChart(
          //   series,
          //   animate: true,
          // ),
        ],
      ),
    );
  }

  // List<BarChart> data = [
  //   BarChart(
  //       year: '2019',
  //       financial: 112,
  //       color: charts.ColorUtil.fromDartColor(Colors.blue)),
  //   BarChart(
  //       year: '2020',
  //       financial: 112,
  //       color: charts.ColorUtil.fromDartColor(Colors.blue)),
  //   BarChart(
  //       year: '2021',
  //       financial: 112,
  //       color: charts.ColorUtil.fromDartColor(Colors.blue)),
  //   BarChart(
  //       year: '2022',
  //       financial: 112,
  //       color: charts.ColorUtil.fromDartColor(Colors.blue)),
  //   BarChart(
  //       year: '2023',
  //       financial: 112,
  //       color: charts.ColorUtil.fromDartColor(Colors.blue)),
  // ];
}
