import 'package:flutter/material.dart';
import 'package:stampede_client/helpers/responsiveness.dart';
import 'package:stampede_client/widgets/overview_cards/overview_cards_large.dart';
import 'package:stampede_client/widgets/overview_cards/overview_cards_medium.dart';
import 'package:stampede_client/widgets/overview_cards/overview_cards_small.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomSize(context))
                const OverviewCardsMediumScreen()
              else
                const OverviewCardsLargeScreen()
            else
              const OverviewCardsSmall()
          ],
        )),
      ],
    );
  }
}
