import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';

class ShadowBox extends StatelessWidget {
  const ShadowBox({
    super.key,
    required this.child,
    this.height,
  });

  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(USizes.md),
      height: height,
      decoration: BoxDecoration(
        color: UColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: UColors.mutedTextColor.withValues(alpha: 0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: child,
    );
  }
}
