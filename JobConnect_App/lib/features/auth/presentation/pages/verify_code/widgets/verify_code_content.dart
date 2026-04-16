import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/features/auth/presentation/pages/forget_password/new_password_screen.dart';

import '../../../../../../common/style/padding.dart';
import '../../../../../../common/widgets/buttons/custom_action_button.dart';
import '../../../../../../common/widgets/icons/GradientIconBox.dart';
import '../../../../../../core/constant/app_gradient.dart';
import '../../../../../../core/constant/colors.dart';
import '../../../../../../core/constant/size.dart';
import '../../../../../../core/constant/text.dart';
import 'otp_input_row.dart';
import 'package:get/get.dart';
class VerifyCodeContent extends StatelessWidget {
  const VerifyCodeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UPadding.screenPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UGradientIconBox(
            size: USizes.iconSm * 4,
            icon: const Icon(
              Iconsax.key,
              color: UColors.primaryColor,
              size: USizes.iconMd,
            ),
            gradient: UAppGradient.secondaryGradient,
          ),
          const SizedBox(height: USizes.spaceBtwItems),
          // Headline and helper text for OTP verification.
          Text(
            UText.verifyCode,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontFamily: 'Arimo',
              color: UColors.primaryColor,
            ),
          ),
          Text(
            UText.verifyCodeSubtitle,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontFamily: 'Arimo',
              color: UColors.mutedTextColor,
            ),
          ),
          Text(
            'email@example.com',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontFamily: 'Arimo',
              color: UColors.primaryColor,
            ),
          ),
          const SizedBox(height: USizes.spaceBtwSections),
          // Card keeps OTP input and CTA grouped as a single action area.
          Container(
            padding: const EdgeInsets.all(USizes.sm),
            height: 180,
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
                Center(
                  child: Text(
                    UText.verifyCodeHint,
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: UColors.primaryColorDark,
                      fontFamily: 'Arimo',
                    ),
                  ),
                ),
                const SizedBox(height: USizes.xs),
                const OtpInputRow(),
                const SizedBox(height: USizes.spaceBtwItems),
                CustomActionButton(
                  text: UText.verifyCode,
                  onPressed: () =>Get.to(()=>NewPasswordScreen()),
                  gradient: UAppGradient.primaryGradientOpacity,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
