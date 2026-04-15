import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    required this.text,
    this.thickness = 1.0,
  });

  final double thickness;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: UColors.primaryColorDark.withValues(alpha: 0.4),
            thickness: thickness,
          ),
        ),
        const SizedBox(width: USizes.spaceBtwItems),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium
              ?.copyWith(
            color: UColors.primaryColorDark,
            fontFamily: 'Arimo',
          ),
        ),
        const SizedBox(width: USizes.spaceBtwItems),
        Expanded(
          child: Divider(
            color: UColors.primaryColorDark.withValues(alpha: 0.4),
            thickness: thickness,
          ),
        ),
      ],
    );
  }
}
