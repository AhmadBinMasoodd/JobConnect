import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/widgets/buttons/custom_action_button.dart';
import 'package:jobconnect_app/common/widgets/textfields/custom_password_field.dart';
import 'package:jobconnect_app/common/widgets/textfields/custom_text_field.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';

class SignUpFormContent extends StatelessWidget {
  const SignUpFormContent({
    super.key,
    required this.onCreateAccountPressed,
    required this.onSignInPressed,
  });

  final VoidCallback onCreateAccountPressed;
  final VoidCallback onSignInPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CustomTextField(
          label: UText.fullNameLabel,
          hintText: UText.fullNameHint,
          prefixIcon: Iconsax.user,
          prefixIconColor: UColors.gray,
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        const CustomTextField(
          label: UText.emailLabel,
          hintText: UText.emailHint,
          prefixIcon: Iconsax.message,
          prefixIconColor: UColors.gray,
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        const CustomTextField(
          label: UText.phoneNumberLabel,
          hintText: UText.phoneNumberHint,
          prefixIcon: Iconsax.call,
          prefixIconColor: UColors.gray,
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        const CustomPasswordField(
          label: UText.passwordLabel,
          hintText: UText.passwordHint,
          prefixIcon: Iconsax.lock,
          prefixIconColor: UColors.gray,
        ),
        const SizedBox(height: USizes.spaceBtwSections),
        CustomActionButton(
          text: UText.createAccount,
          onPressed: onCreateAccountPressed,
          textColor: UColors.white,
          backgroundColor: UColors.primaryColor,
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                UText.alreadyHaveAccount,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: UColors.primaryColorDark,
                      fontFamily: 'Arimo',
                    ),
              ),
              TextButton(
                onPressed: onSignInPressed,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  UText.signInAction,
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

