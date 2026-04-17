import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/icons/GradientIconBox.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';
import '../../style/padding.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({
    super.key,
    required this.icon,
    required this.size,
    required this.titleText,
    required this.subtitleText,
    required this.child,
    this.iconSpacing = USizes.spaceBtwItems,
    this.gradient,
    this.sectionSpacing = USizes.spaceBtwSections,
  });

  final double size;
  final Icon icon;
  final String titleText;
  final String subtitleText;
  final Widget child;
  final double iconSpacing;
  final double sectionSpacing;
  final LinearGradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UPadding.screenPadding,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          UGradientIconBox(size: size, icon: icon, gradient: gradient),
          SizedBox(height: iconSpacing),
          Text(
            titleText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontFamily: 'Arimo',
                  color: UColors.primaryColor,
                ),
          ),
          Text(
            subtitleText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontFamily: 'Arimo',
                  color: UColors.mutedTextColor,
                ),
          ),
          SizedBox(height: sectionSpacing),
          child,
        ],
      ),
    );
  }
}
