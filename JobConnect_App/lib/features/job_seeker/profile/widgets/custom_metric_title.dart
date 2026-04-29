import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/icons/GradientIconBox.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class CustomMetricTitle extends StatelessWidget {
  const CustomMetricTitle({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.gradient = UAppGradient.secondaryGradient,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textAlign = TextAlign.center,
  });

  final String title;
  final String subtitle;
  final Icon icon;
  final Gradient gradient;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        UGradientIconBox(
          size: USizes.buttonHeight * 3,
          icon: icon,
          gradient: UAppGradient.secondaryGradient,
        ),
        const SizedBox(height: USizes.spaceBtwItems / 2),
        Text(
          title,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: UColors.primaryColor,
                fontFamily: 'Arimo',
              ),
        ),
        Text(
          subtitle,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: UColors.primaryColor,
                fontFamily: 'Arimo',
              ),
        ),
      ],
    );
  }
}
