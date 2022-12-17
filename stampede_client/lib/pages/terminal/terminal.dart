import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stampede_client/constants/controllers.dart';
import 'package:stampede_client/constants/style.dart';
import 'package:stampede_client/helpers/responsiveness.dart';
import 'package:stampede_client/widgets/custom_text.dart';

class TerminalPage extends StatelessWidget {
  const TerminalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                    color: light,
                  ),
                )
              ],
            ))
      ],
    );
  }
}
