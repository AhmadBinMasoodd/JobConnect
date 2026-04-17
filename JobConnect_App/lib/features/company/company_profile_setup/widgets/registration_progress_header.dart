import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/helpers/device_helpers.dart';

class RegistrationProgressHeader extends StatelessWidget {
  const RegistrationProgressHeader({
    super.key,
    required this.currentStep,
  }) : assert(currentStep >= 1 && currentStep <= 4, 'currentStep must be between 1 and 4');

  final int currentStep;



  // Calculate progress percentage
  double _getProgressValue() {
    return (currentStep * 25) / 100;
  }

  @override
  Widget build(BuildContext context) {
    final double headerHeight = UDeviceHelpers.getAppBarHeight() * 1.5;

    return Container(
      height: headerHeight,
      color: UColors.primaryColor,
      padding: const EdgeInsets.symmetric(
        horizontal: USizes.lg*2,
        vertical: USizes.sm,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Progress bar
          ClipRRect(
            borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
            child: LinearProgressIndicator(
              value: _getProgressValue(),
              minHeight: 6,
              backgroundColor: UColors.white.withValues(alpha: 0.3),
              valueColor: AlwaysStoppedAnimation<Color>(UColors.secondaryColor),
            ),
          ),
          SizedBox(height: USizes.spaceBtwItems/2),
          // Step title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Company Info',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: UColors.white,
                      fontFamily: 'Arimo',
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                'Location',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: UColors.white,
                  fontFamily: 'Arimo',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Team',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: UColors.white,
                  fontFamily: 'Arimo',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Verify',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: UColors.white,
                  fontFamily: 'Arimo',
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

