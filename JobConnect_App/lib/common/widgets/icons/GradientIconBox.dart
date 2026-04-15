import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';


class UGradientIconBox extends StatelessWidget {
  const UGradientIconBox({required this.size, required this.icon, required this.gradient});

  final double size;
  final Icon icon;
  final Gradient gradient;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(USizes.cardRadiusLg),
      ),
      child: Center(
        child: IconTheme(
          data: const IconThemeData(color: UColors.white), // Force white color
          child: icon,
        ),
      ),
    );
  }
}
