import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/helpers/device_helpers.dart';

class CustomProgressHeader extends StatelessWidget {
  const CustomProgressHeader({
    super.key,
    this.progress = 0.17, // default 17% (step 1 of ~6)
  });

  final double progress; // value between 0.0 and 1.0

  @override
  Widget build(BuildContext context) {
    final double progressText= progress * 100;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: UDeviceHelpers.getAppBarHeight() * 0.25,
          color: UColors.primaryColor,
          child: ClipRRect(
            borderRadius:BorderRadius.circular(USizes.borderRadiusLg) ,
            child: LinearProgressIndicator(
              value: progress,
              borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
              backgroundColor: UColors.primaryColor,
              valueColor: AlwaysStoppedAnimation<Color>(
                UColors.secondaryColor,
              ),
              minHeight: UDeviceHelpers.getAppBarHeight() * 0.5,
            ),
          ),
        ),
        SizedBox(height: USizes.spaceBtwItems/2),
        Text(
          progressText.toString() +"% completed"  ,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: UColors.white,
            fontFamily: 'Arimo',
            fontWeight: FontWeight.w600,
          )
        )
      ],
    );
  }
}