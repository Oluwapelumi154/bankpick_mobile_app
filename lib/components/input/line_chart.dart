import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SimpleLineChart extends StatelessWidget {
  final double width;
  const SimpleLineChart({Key? key, this.width = 300}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          borderData: FlBorderData(
              show: false, border: Border.all(color: Colors.grey, width: 1)),
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                reservedSize: 20,
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 0:
                      return const Text('Jan', style: TextStyle(fontSize: 12));
                    case 1:
                      return const Text('Feb', style: TextStyle(fontSize: 12));
                    case 2:
                      return const Text('Mar', style: TextStyle(fontSize: 12));
                    case 3:
                      return const Text('Apr', style: TextStyle(fontSize: 12));
                    default:
                      return const SizedBox.shrink();
                  }
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles:
                  SideTitles(showTitles: false, reservedSize: 5, interval: 1),
            ),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0, 1),
                FlSpot(1, 3),
                FlSpot(2, 2),
                FlSpot(3, 5),
              ],
              isCurved: true,
              color: AppColors.primary,
              barWidth: 2,
              dotData: FlDotData(show: true),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    AppColors.primary.withValues(alpha: 0.4),
                    Colors.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
