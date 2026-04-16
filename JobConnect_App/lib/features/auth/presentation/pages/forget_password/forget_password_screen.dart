import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/buttons/custom_action_button.dart';
import 'package:jobconnect_app/common/widgets/icons/GradientIconBox.dart';
import 'package:jobconnect_app/common/widgets/textfields/custom_text_field.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

import '../../../../../common/widgets/appbar/custom_title_bar.dart';
import '../../../../../core/constant/text.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true),
      body: Column(
        children: [
          // Top auth header with page title.
          CustomTitleBar(title: UText.forgotPassword,),
          Expanded(
            child: Container(
              padding: UPadding.screenPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UGradientIconBox(
                    size: USizes.iconSm * 4,
                    icon: Icon(
                      Iconsax.message,
                      color: UColors.primaryColor,
                      size: USizes.iconMd,
                    ),
                    gradient: UAppGradient.secondaryGradient,
                  ),
                  SizedBox(height:USizes.spaceBtwItems),
                  // Short guidance text to explain the reset flow.
                  Text(
                    UText.resetYourPassword,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'Arimo',
                      color: UColors.primaryColor,
                    ),
                  ),
                  Text(
                    UText.resetPasswordSubtitle,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontFamily: 'Arimo',
                      color: UColors.mutedTextColor,
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),
                  // Email input card where user requests a verification code.
                  Container(
                    padding: EdgeInsets.all(USizes.sm),
                    height: 180,
                    decoration: BoxDecoration(
                      color: UColors.white,  // Add background color
                      borderRadius: BorderRadius.circular(12),  // Add rounded corners
                      border: Border.all(
                        color: UColors.mutedTextColor.withValues(alpha: 0.3),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),  // Darker shadow
                          blurRadius: 8,  // More blur for softer shadow
                          offset: Offset(0, 2),  // Subtle vertical offset
                        ),
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),  // Second shadow for depth
                          blurRadius: 4,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextField(label: UText.emailLabel, hintText: UText.emailHint, prefixIcon: Iconsax.message),
                        SizedBox(height: USizes.spaceBtwItems),
                        // Primary CTA for sending verification/reset instructions.
                        CustomActionButton(text: UText.verificationBtnTxt, onPressed: (){},gradient: UAppGradient.primaryGradientOpacity,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
