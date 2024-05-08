// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, avoid_print

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:plotem/utils/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final gridColor = Colors.black26;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat.yMMMd().format(DateTime.now()),
                    style: const TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    children: [
                      Text(
                        "Hi,",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Ranaufal Muha",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const CircleAvatar(
                maxRadius: 30,
                backgroundImage: AssetImage(
                  "./lib/assets/ifal.JPG",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "Statistics Performance",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: AspectRatio(
            aspectRatio: 4 / 3,
            child: LineChart(
              LineChartData(
                minX: 0,
                minY: 0,
                maxX: 30,
                maxY: 10,
                gridData: FlGridData(
                  drawHorizontalLine: true,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: gridColor,
                      strokeWidth: 1,
                    );
                  },
                  getDrawingVerticalLine: (value) {
                    return FlLine(
                      color: gridColor,
                      strokeWidth: 1,
                    );
                  },
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(width: 1, color: gridColor),
                ),
                titlesData: const FlTitlesData(
                  show: true,
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    isCurved: true,
                    spots: [
                      const FlSpot(0, 3),
                      const FlSpot(1, 4),
                      const FlSpot(3, 7),
                      const FlSpot(4, 3),
                      const FlSpot(15, 8),
                      const FlSpot(25, 7),
                      const FlSpot(30, 7),
                    ],
                    gradient: LinearGradient(colors: gradientColors),
                    barWidth: 5,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: gradientColors
                            .map((color) => color.withOpacity(0.4))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "Actions",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 7 / 6,
            shrinkWrap: true,
            children: [
              MyActionWidget(
                title: "Performance",
                number: "88",
                detail: "all days",
                icon: Icons.trending_up,
                color: Colors.green,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.35),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withOpacity(.6),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.event_available,
                          color: Colors.purple,
                          size: 15,
                        ),
                        const SizedBox(width: 10),
                        const Text("Absen"),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            print("Test");
                          },
                          child: const Text(
                            "+",
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      "undone",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(
                          Icons.error_outline,
                          color: Colors.black54,
                          size: 12,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          DateFormat.yMMMd().format(DateTime.now()),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              MyActionWidget(
                title: "Likes",
                number: "1895",
                detail: "all posts",
                icon: Icons.thumb_up_alt_rounded,
                color: Colors.red,
              ),
              MyActionWidget(
                title: "Comments",
                number: "395",
                detail: "all posts",
                icon: Icons.mode_comment,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyActionWidget extends StatelessWidget {
  String title;
  String number;
  String detail;
  final icon;
  final color;
  MyActionWidget({
    super.key,
    required this.title,
    required this.number,
    required this.detail,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.35),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withOpacity(.6),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: color,
                size: 15,
              ),
              const SizedBox(width: 10),
              Text(title),
            ],
          ),
          const Spacer(),
          Text(
            number,
            style: const TextStyle(
              fontSize: 32,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.black54,
                size: 12,
              ),
              const SizedBox(width: 5),
              Text(
                detail,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
