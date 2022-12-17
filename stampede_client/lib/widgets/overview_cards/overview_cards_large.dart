import 'package:flutter/material.dart';
import 'package:stampede_client/constants/style.dart';
import 'package:stampede_client/widgets/info_card.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InfoCard(
          title: "Robot Type",
          value: "Standard",
          topColor: accent,
        ),
        SizedBox(
          width: width / 64,
        ),
        InfoCard(
          title: "Robot Status",
          value: "Online",
          topColor: accent,
        ),
        SizedBox(
          width: width / 64,
        ),
        InfoCard(
          title: "Ref System Status",
          value: "Offline",
          topColor: accent,
        ),
        SizedBox(
          width: width / 64,
        ),
        InfoCard(
          title: "Battery Charge",
          value: "0%",
          topColor: accent,
        ),
      ],
    );
  }
}
