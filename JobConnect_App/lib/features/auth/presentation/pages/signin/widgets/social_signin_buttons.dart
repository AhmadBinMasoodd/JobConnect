import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';

class SocialSignInButtons extends StatelessWidget {
  const SocialSignInButtons({
    super.key,
    required this.onApplePressed,
    required this.onGooglePressed,
  });

  final VoidCallback onApplePressed;
  final VoidCallback onGooglePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: UColors.white.withValues(alpha: 0.1),
            foregroundColor: UColors.black,
            side: BorderSide(
              color: UColors.black.withValues(alpha: 0.5),
              width: 1,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: USizes.buttonHeight,
            ),
          ),
          onPressed: onApplePressed,
          child: Text(
            UText.orContinueWithApple,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: UColors.black,
                  fontFamily: 'Arimo',
                ),
          ),
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: UColors.black,
            foregroundColor: UColors.white,
            padding: const EdgeInsets.symmetric(
              vertical: USizes.buttonHeight,
            ),
          ),
          onPressed: onGooglePressed,
          child: Text(
            UText.orContinueWithGoogle,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: UColors.white,
                  fontFamily: 'Arimo',
                ),
          ),
        ),
      ],
    );
  }
}

