import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PieChartSample extends StatelessWidget {
  const PieChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PieChart(
          PieChartData(
            sections: getSections(),
            borderData: FlBorderData(show: false),
            sectionsSpace: 0,
            centerSpaceRadius: 40,
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> getSections() {
    return [
      PieChartSectionData(
        color: Colors.blue,
        value: 40,
        title: '40%',
        radius: 50,
        titleStyle: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.red,
        value: 30,
        title: '30%',
        radius: 50,
        titleStyle: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.green,
        value: 20,
        title: '20%',
        radius: 50,
        titleStyle: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.yellow,
        value: 10,
        title: '10%',
        radius: 50,
        titleStyle: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ];
  }
}

void main() => runApp(const MaterialApp(home: PieChartSample()));
