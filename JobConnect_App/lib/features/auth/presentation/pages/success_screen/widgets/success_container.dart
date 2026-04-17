import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobconnect_app/features/auth/presentation/pages/success_screen/widgets/row_with_icon_text.dart';

import '../../../../../../common/widgets/buttons/custom_action_button.dart';
import '../../../../../../core/constant/app_gradient.dart';
import '../../../../../../core/constant/colors.dart';
import '../../../../../../core/constant/size.dart';
import '../../../../../../core/constant/text.dart';
import '../../signin/signin_screen.dart';

class SuccessContainer extends StatelessWidget {
  const SuccessContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(USizes.lg),
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
        children: [
          Container(
            decoration: BoxDecoration(
              color: UColors.primaryColorDark.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(USizes.sm),

            ///Row contain the success icon and the text "Your account is now secure. Please remember to keep it safe."
            child: RowWithIconText(),
          ),
          const SizedBox(height: USizes.spaceBtwItems),
          SizedBox(
            width: double.infinity,
            child: CustomActionButton(
              text: UText.backToLogin,
              onPressed: () => Get.offAll(() => const SignInScreen()),
              gradient: UAppGradient.primaryGradient,
              backgroundColor: UColors.primaryColor.withValues(alpha: 0.2),
              textColor: UColors.white,
            ),
          )
        ],
      ),
    );
  }
}

