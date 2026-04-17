import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:get/get.dart';
import '../../../../../../common/widgets/buttons/custom_action_button.dart';
import '../../../../../../common/widgets/textfields/custom_text_field.dart';
import '../../../../../../core/constant/app_gradient.dart';
import '../../../../../../core/constant/colors.dart';
import '../../../../../../core/constant/size.dart';
import '../../../../../../core/helpers/device_helpers.dart';
import '../../success_screen/success_screen.dart';
class NewPasswordContainer extends StatelessWidget {
  const NewPasswordContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(USizes.sm),
      height: UDeviceHelpers.getScreenHeight(context) * 0.3,
      decoration: BoxDecoration(
        color: UColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: UColors.mutedTextColor.withValues(alpha: 0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            label: 'New Password',
            hintText: 'Enter your new password',
            prefixIcon: Iconsax.key,
          ),
          SizedBox(height: USizes.spaceBtwInputFields,),
          CustomTextField(
            label: 'Confirm Password',
            hintText: 'Confirm your new password',
            prefixIcon: Iconsax.key,
          ),
          const SizedBox(height: USizes.spaceBtwItems),
          // Primary CTA for sending verification/reset instructions.
          CustomActionButton(
            text: 'Reset Password',
            onPressed: () => Get.to(() => const SuccessScreen()),
            gradient: UAppGradient.primaryGradientOpacity,
          ),
        ],
      ),
    );
  }
}
