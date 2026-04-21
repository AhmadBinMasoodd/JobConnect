import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';

class CustomIconActionButton extends StatelessWidget {
  const CustomIconActionButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.textColor = UColors.white,
    this.iconColor = UColors.white,
    this.backgroundColor = UColors.primaryColor,
    this.borderColor,
    this.horizontalPadding = USizes.md,
    this.verticalPadding = USizes.buttonHeight,
    this.borderRadius = USizes.buttonRadius,
    this.gradient,
    this.iconSize = USizes.iconMd,
    this.spacing = USizes.xs,
    this.iconOnLeft = false,
  });

  final String title;
  final IconData icon;
  final VoidCallback? onPressed;
  final Color textColor;
  final Color iconColor;
  final Color backgroundColor;
  final Color? borderColor;
  final double horizontalPadding;
  final double verticalPadding;
  final double borderRadius;
  final Gradient? gradient;
  final double iconSize;
  final double spacing;
  final bool iconOnLeft;

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (iconOnLeft) ...[
                Icon(
                  icon,
                  size: iconSize,
                  color: iconColor,
                ),
                SizedBox(width: spacing),
              ],
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    title,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: textColor,
                          fontFamily: 'Arimo',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              if (!iconOnLeft) ...[
                SizedBox(width: spacing),
                Icon(
                  icon,
                  size: iconSize,
                  color: iconColor,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

