import 'package:flutter/material.dart';
import 'package:stampede_client/constants/style.dart';
import 'package:stampede_client/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String? title;
  final String? value;
  final VoidCallback? onTap;

  const InfoCardSmall({
    Key? key,
    this.title,
    this.value,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: ElevationOverlay.applySurfaceTint(background, overlay, 1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: accent,
                width: 1,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title as String,
                size: 18,
                weight: FontWeight.w300,
                color: light,
              ),
              CustomText(
                text: value as String,
                size: 24,
                weight: FontWeight.bold,
                color: light,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
