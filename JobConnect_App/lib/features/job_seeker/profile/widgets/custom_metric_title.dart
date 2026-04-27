import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/icons/GradientIconBox.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/helpers/device_helpers.dart';

class CustomMetricTitle extends StatelessWidget {
  const CustomMetricTitle({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.gradient=UAppGradient.secondaryGradient

  });

  final String title;
  final String subtitle;
  final Icon icon;
  final Gradient gradient;
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UGradientIconBox(
            size:USizes.buttonHeight*3,
            icon: icon,
            gradient: UAppGradient.secondaryGradient,
          ),
          const SizedBox(height: USizes.spaceBtwItems / 2),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: UColors.primaryColor,
              fontFamily: 'Arimo',
            ),
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: UColors.primaryColor,
              fontFamily: 'Arimo',
            ),
          ),
        ],

    );
  }
}
