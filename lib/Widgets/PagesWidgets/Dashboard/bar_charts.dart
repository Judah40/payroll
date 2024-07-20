import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BarChart(
          BarChartData(
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 60,
                  getTitlesWidget: (value, meta) {
                    final titles = ['Revenue', 'Expenditure'];
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: Text(
                        titles[value.toInt()],
                        style: const TextStyle(fontSize: 14),
                      ),
                    );
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 60,
                  getTitlesWidget: (value, meta) {
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: Text(
                        value.toString(),
                        style: const TextStyle(fontSize: 14),
                      ),
                    );
                  },
                ),
              ),
            ),
            borderData: FlBorderData(
              show: true,
              border: Border.all(
                color: const Color(0xff37434d),
                width: 1,
              ),
            ),
            gridData: FlGridData(show: false),
            barGroups: [
              BarChartGroupData(
                x: 0,
                barRods: [
                  BarChartRodData(
                    toY: 1500, // Total Revenue
                    color: Colors.blue,
                    width: 20,
                    backDrawRodData: BackgroundBarChartRodData(
                      toY: 2000,
                      color: Colors.blue.withOpacity(0.3),
                    ),
                  ),
                ],
                showingTooltipIndicators: [0],
              ),
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(
                    toY: 1000, // Total Expenditure
                    color: Colors.red,
                    width: 20,
                    backDrawRodData: BackgroundBarChartRodData(
                      toY: 2000,
                      color: Colors.red.withOpacity(0.3),
                    ),
                  ),
                ],
                showingTooltipIndicators: [0],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: BarChartSample()));
