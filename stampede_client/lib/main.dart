import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stampede_client/constants/style.dart';
import 'package:stampede_client/controllers/menu_controller.dart' as menu;
import 'package:stampede_client/controllers/navigation_controller.dart';
import 'package:stampede_client/helpers/no_transitions_builder.dart';
import 'package:stampede_client/layout.dart';

void main() {
  Get.put(menu.MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Stampede Client",
      theme: ThemeData(
        scaffoldBackgroundColor: background,
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: const Color(0xFFbf5700),
        useMaterial3: true,
      ),
      home: SiteLayout(),
    );
  }
}
