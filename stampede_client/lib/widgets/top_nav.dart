import 'package:flutter/material.dart';
import 'package:stampede_client/constants/style.dart';
import 'package:stampede_client/helpers/responsiveness.dart';
import 'package:stampede_client/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leadingWidth: !ResponsiveWidget.isSmallScreen(context) ? 42 : 25,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 14, bottom: 5),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                    filterQuality: FilterQuality.medium,
                  ),
                )
              ],
            )
          : IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                key.currentState!.openDrawer();
              },
            ),
      elevation: 0,
      title: Row(
        children: [
          Visibility(
            child: CustomText(
              text: "Stampede Client",
              color: light,
              size: 20,
              weight: FontWeight.normal,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
              icon: Icon(
                Icons.settings,
                color: light,
              ),
              padding: const EdgeInsets.only(left: 15, right: 15),
              onPressed: () {}),
          Container(
            width: 1,
            height: 22,
            color: light,
          ),
          const SizedBox(
            width: 15,
          ),
          CustomText(
            text: "Steve",
            color: light,
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      iconTheme: IconThemeData(color: light),
      backgroundColor: topbar,
    );
