import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stampede_client/constants/controllers.dart';
import 'package:stampede_client/constants/style.dart';
import 'package:stampede_client/helpers/responsiveness.dart';
import 'package:stampede_client/routing/routes.dart';
import 'package:stampede_client/widgets/custom_text.dart';
import 'package:stampede_client/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: sidebar,
      child: ListView(children: [
        if (ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(width: width / 48),
                  Padding(
                    padding: const EdgeInsets.only(right: 12, bottom: 6),
                    child: Image.asset(
                      "assets/icons/logo.png",
                      width: 28,
                      filterQuality: FilterQuality.medium,
                    ),
                  ),
                  Flexible(
                    child: CustomText(
                      text: "Stampede Client",
                      size: 20,
                      weight: FontWeight.bold,
                      color: light,
                    ),
                  ),
                  SizedBox(width: width / 48)
                ],
              ),
            ],
          ),
        Divider(color: sidebar),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItems
              .map((itemName) => SideMenuItem(
                  itemName: itemName,
                  onTap: () {
                    if (itemName == terminalPageRoute) {
                      //TODO:: Go to terminal
                    }

                    if (!menuController.isActive(itemName)) {
                      menuController.changeActiveItemTo(itemName);
                      if (ResponsiveWidget.isSmallScreen(context)) {
                        Get.back();
                      }
                      navigationController.navigateTo(itemName);
                    }
                  }))
              .toList(),
        )
      ]),
    );
  }
}
