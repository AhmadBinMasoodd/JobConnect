import 'package:flutter/material.dart';

import '../../../core/constant/app_gradient.dart';
import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';
import '../../../core/helpers/device_helpers.dart';


class CustomTitleBar extends StatelessWidget {
  const CustomTitleBar({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: UDeviceHelpers.getAppBarHeight(),
      width: double.infinity,
      decoration: BoxDecoration(gradient: UAppGradient.primaryGradient),
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: USizes.md),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: UColors.white,
            fontFamily: 'Arimo',
          ),
        ),
      ),
    );
  }
}
