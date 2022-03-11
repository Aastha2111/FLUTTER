import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class myChart extends StatelessWidget {
  Map<String, double> dataMap;
  myChart({Key? key, required this.dataMap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      colorList: [Colors.blue, Colors.blue.shade100],
      chartRadius: 140,
      legendOptions: LegendOptions(
        legendPosition: LegendPosition.bottom,
      ),
    );
  }
}
