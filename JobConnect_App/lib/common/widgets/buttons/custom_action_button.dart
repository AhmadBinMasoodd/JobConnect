import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = UColors.white,
    this.backgroundColor = UColors.primaryColor,
    this.borderColor,
    this.horizontalPadding = USizes.md,
    this.verticalPadding = USizes.buttonHeight,
    this.borderRadius = USizes.buttonRadius,
    this.gradient
  });

  final String text;
  final VoidCallback? onPressed;
  final Color textColor;
  final Color backgroundColor;
  final Color? borderColor;
  final double horizontalPadding;
  final double verticalPadding;
  final double borderRadius;
  final Gradient? gradient;
  @override
  Widget build(BuildContext context) {
    final bool hasGradient = gradient != null;

    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: hasGradient ? null : backgroundColor,
          gradient: gradient,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: borderColor ?? (hasGradient ? Colors.transparent : backgroundColor),
            width: 1,
          ),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            // Keep the button layer transparent so gradient/background stays visible.
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            elevation: 0,
            foregroundColor: textColor,
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: textColor,
                  fontFamily: 'Arimo',
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}
