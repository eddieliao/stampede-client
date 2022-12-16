import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stampede_client/constants/style.dart';
import 'package:stampede_client/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overviewPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) {
      hoverItem.value = itemName;
    }
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overviewPageRoute:
        return customIcon(Icons.home, itemName);
      case graphPageRoute:
        return customIcon(Icons.show_chart, itemName);
      case odometryPageRoute:
        return customIcon(Icons.map, itemName);
      case terminalPageRoute:
        return customIcon(Icons.terminal, itemName);
      default:
        return customIcon(Icons.error, itemName);
    }
  }

  Widget customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(icon, size: 22, color: light);
    }

    return Icon(icon,
        color: isHovering(itemName) ? light : light.withOpacity(0.7));
  }
}
