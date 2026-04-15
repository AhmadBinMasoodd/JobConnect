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
  });

  final String text;
  final VoidCallback? onPressed;
  final Color textColor;
  final Color backgroundColor;
  final Color? borderColor;
  final double horizontalPadding;
  final double verticalPadding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              color: borderColor ?? backgroundColor,
              width: 1,
            ),
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
    );
  }
}

