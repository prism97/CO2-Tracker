import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MachineScreen extends StatefulWidget {
  final String machine;
  const MachineScreen({super.key, required this.machine});

  @override
  State<MachineScreen> createState() => _MachineScreenState();
}

class _MachineScreenState extends State<MachineScreen> {
  bool daily = false, weekly = true, monthly = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(widget.machine),
          Wrap(
            children: [
              ChoiceChip(
                label: const Text("Daily"),
                selected: daily,
                onSelected: (val) => setState(() {
                  if (val) {
                    daily = val;
                    weekly = !val;
                    monthly = !val;
                  }
                }),
              ),
              ChoiceChip(
                label: const Text("Weekly"),
                selected: weekly,
                onSelected: (val) => setState(() {
                  if (val) {
                    daily = !val;
                    weekly = val;
                    monthly = !val;
                  }
                }),
              ),
              ChoiceChip(
                label: const Text("Monthly"),
                selected: monthly,
                onSelected: (val) => setState(() {
                  if (val) {
                    daily = !val;
                    weekly = !val;
                    monthly = val;
                  }
                }),
              ),
            ],
          ),
          if (weekly)
            AspectRatio(
              aspectRatio: 2,
              child: BarChart(
                BarChartData(
                  maxY: 10,
                  minY: 0,
                  gridData: FlGridData(show: false),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(toY: 7),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(toY: 4),
                      ],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(toY: 2),
                      ],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(toY: 9),
                      ],
                    ),
                    BarChartGroupData(
                      x: 4,
                      barRods: [
                        BarChartRodData(toY: 5),
                      ],
                    ),
                    BarChartGroupData(
                      x: 5,
                      barRods: [
                        BarChartRodData(toY: 3),
                      ],
                    ),
                    BarChartGroupData(
                      x: 6,
                      barRods: [
                        BarChartRodData(toY: 1),
                      ],
                    ),
                  ],
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(sideTitles: _bottomTitles),
                    leftTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                ),
                swapAnimationDuration: Duration(minutes: 1),
                swapAnimationCurve: Curves.bounceInOut,
              ),
            ),
        ],
      ),
    );
  }

  SideTitles get _bottomTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 0:
              text = 'Fri';
              break;
            case 1:
              text = 'Sat';
              break;
            case 2:
              text = 'Sun';
              break;
            case 3:
              text = 'Mon';
              break;
            case 4:
              text = 'Tue';
              break;
            case 5:
              text = 'Wed';
              break;
            case 6:
              text = 'Thu';
              break;
          }

          return Text(text);
        },
      );
}
