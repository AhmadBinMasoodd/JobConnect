import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/widgets/buttons/custom_action_button.dart';
import 'package:jobconnect_app/common/widgets/customs/custom_divider.dart';
import 'package:jobconnect_app/common/widgets/textfields/custom_password_field.dart';
import 'package:jobconnect_app/common/widgets/textfields/custom_text_field.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';

class SignInFormContent extends StatelessWidget {
  const SignInFormContent({
    super.key,
    required this.onForgotPasswordPressed,
    required this.onSignInPressed,
    required this.onSignUpPressed,
  });

  final VoidCallback onForgotPasswordPressed;
  final VoidCallback onSignInPressed;
  final VoidCallback onSignUpPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: USizes.spaceBtwSections),
        const CustomDivider(text: UText.orContinueWith, thickness: 1.5),
        const SizedBox(height: USizes.spaceBtwSections),
        const CustomTextField(
          label: UText.emailLabel,
          hintText: UText.emailHint,
          prefixIcon: Iconsax.message,
          prefixIconColor: Color(0xFF6B7280),
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        const CustomPasswordField(
          label: UText.passwordLabel,
          hintText: UText.passwordHint,
          prefixIcon: Iconsax.lock,
          prefixIconColor: Color(0xFF6B7280),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: onForgotPasswordPressed,
            child: Text(
              UText.forgetPassword,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: UColors.primaryColor,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        CustomActionButton(
          text: UText.signInAction,
          onPressed: onSignInPressed,
          textColor: UColors.white,
          backgroundColor: UColors.primaryColor,
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                UText.dontHaveAccount,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: UColors.primaryColorDark,
                      fontFamily: 'Arimo',
                    ),
              ),
              TextButton(
                onPressed: onSignUpPressed,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  UText.signUpAction,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: UColors.secondaryColor,
                        fontFamily: 'Arimo',
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            text: UText.termsPrefix,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: UColors.primaryColorDark,
                  fontFamily: 'Arimo',
                ),
            children: [
              TextSpan(
                text: UText.termsAndPrivacy,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: UColors.secondaryColor,
                      fontFamily: 'Arimo',
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

