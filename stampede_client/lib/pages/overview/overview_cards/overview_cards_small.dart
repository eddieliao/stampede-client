
import 'package:flutter/material.dart';
import 'package:stampede_client/widgets/info_cards/info_card_small.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Robot Type",
            value: "Standard",
            onTap: () {},
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: "Robot Status",
            value: "Online",
            onTap: () {},
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: "Ref System Status",
            value: "Offline",
            onTap: () {},
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: "Battery Charge",
            value: "0%",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
