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
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                    filterQuality: FilterQuality.medium,
                  ),
                )
              ],
            )
          : IconButton(
              icon: const Icon(Icons.menu),
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
            ),
          ),
          Expanded(child: Container()),
          CustomText(
            text: "Standard",
            color: light,
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      iconTheme: IconThemeData(color: light),
      backgroundColor: background,
    );
