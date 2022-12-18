import 'package:flutter/material.dart';
import 'package:stampede_client/widgets/line_chart.dart';

class GraphPage extends StatelessWidget {
  const GraphPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: const LineChartSample2(),
    );
  }
}
