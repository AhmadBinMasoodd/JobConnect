import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/buttons/custom_action_button.dart';
import 'package:jobconnect_app/common/widgets/icons/GradientIconBox.dart';
import 'package:jobconnect_app/common/widgets/textfields/custom_text_field.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/common/widgets/layout/auth_reset_layout.dart';
import 'package:jobconnect_app/features/auth/presentation/pages/verify_code/verify_code_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true,),
      body: AuthResetLayout(
        title: UText.forgotPassword,
        icon: UGradientIconBox(
          size: USizes.iconSm * 4,
          icon: Icon(
            Iconsax.message,
            color: UColors.primaryColor,
            size: USizes.iconMd,
          ),
          gradient: UAppGradient.secondaryGradient,
        ),
        titleText: UText.resetYourPassword,
        subtitleText: UText.resetPasswordSubtitle,
        child: Container(
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
              CustomTextField(
                label: UText.emailLabel,
                hintText: UText.emailHint,
                prefixIcon: Iconsax.message,
              ),
              const SizedBox(height: USizes.spaceBtwItems),
              // Primary CTA for sending verification/reset instructions.
              CustomActionButton(
                text: UText.verificationBtnTxt,
                onPressed: () => Get.to(() => const VerifyCodeScreen()),
                gradient: UAppGradient.primaryGradientOpacity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
