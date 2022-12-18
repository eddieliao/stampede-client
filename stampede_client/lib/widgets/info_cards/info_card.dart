import 'package:flutter/material.dart';
import 'package:stampede_client/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String? title;
  final String? value;
  final Color? topColor;
  final bool? isActive;

  const InfoCard({
    Key? key,
    this.title,
    this.value,
    this.topColor,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      child: Container(
        height: 136,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ElevationOverlay.applySurfaceTint(background, overlay, 3),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 5,
                  decoration: BoxDecoration(
                      color: topColor ?? accent,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      )),
                ))
              ],
            ),
            Expanded(child: Container()),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "$title\n",
                    style: TextStyle(
                      fontSize: 16,
                      color: isActive! ? accent : light,
                    )),
                TextSpan(
                    text: "$value",
                    style: TextStyle(
                      fontSize: 40,
                      color: isActive! ? accent : light,
                    )),
              ]),
              textAlign: TextAlign.center,
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    ));
  }
}
