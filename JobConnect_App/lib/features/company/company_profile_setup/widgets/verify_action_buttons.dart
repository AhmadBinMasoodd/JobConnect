import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constant/app_gradient.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';
import '../../../../core/constant/text.dart';
import '../../../../common/widgets/buttons/custom_icon_action_button.dart';

/// Footer actions for the verification step.
class VerifyActionButtons extends StatelessWidget {
  const VerifyActionButtons({
    super.key,
    required this.onSubmit,
    required this.onBack,
  });

  final VoidCallback onSubmit;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconActionButton(
          title: 'Submit for Verification',
          icon: Iconsax.tick_circle,
          onPressed: onSubmit,
          gradient: UAppGradient.primaryGradient,
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        CustomIconActionButton(
          title: UText.backBtnText,
          icon: Icons.arrow_back,
          iconOnLeft: true,
          onPressed: onBack,
          textColor: UColors.primaryColor,
          iconColor: UColors.primaryColor,
          backgroundColor: UColors.white,
          borderColor: UColors.primaryColor.withValues(alpha: 0.2),
        ),
      ],
    );
  }
}
