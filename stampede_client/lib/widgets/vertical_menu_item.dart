import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stampede_client/constants/controllers.dart';
import 'package:stampede_client/constants/style.dart';
import 'package:stampede_client/widgets/custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const VerticalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName)
              ? light.withOpacity(0.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  width: 3,
                  height: 88,
                  color: accent,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: menuController.returnIconFor(itemName),
                    ),
                    if (!menuController.isActive(itemName))
                      Flexible(
                          child: CustomText(
                        text: itemName,
                        color: menuController.isHovering(itemName)
                            ? light
                            : light.withOpacity(0.7),
                      ))
                    else
                      Flexible(
                          child: CustomText(
                        text: itemName,
                        color: light,
                        size: 18,
                        weight: FontWeight.bold,
                      )),
                    const Padding(padding: EdgeInsets.only(bottom: 16)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
