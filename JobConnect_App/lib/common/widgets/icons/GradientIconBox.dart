import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';


class UGradientIconBox extends StatelessWidget {
  const UGradientIconBox({required this.size, required this.icon, this.gradient,this.color,this.radius=USizes.cardRadiusLg, super.key});

  final double size;
  final Icon icon;
  final Gradient? gradient;
  final double radius;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        borderRadius: BorderRadius.circular(radius),
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
