import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/features/auth/presentation/pages/forget_password/forget_password_screen.dart';
import 'package:jobconnect_app/features/auth/presentation/pages/landing_page.dart';
import 'package:jobconnect_app/features/auth/presentation/pages/signup/signup_screen.dart';

import '../../../../../common/widgets/appbar/auth_custom_header.dart';
import 'widgets/signin_form_content.dart';
import 'widgets/social_signin_buttons.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        onLeadingPressed: () => Get.offAll(() => const LandingPage()),
      ),
      body: Container(
        // Keep the page background white so the area under terms stays white.
        height: double.infinity,
        color: UColors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AuthCustomHeader(
                title: UText.signInTitle,
                subtitle: UText.signInSubtitle,
              ),
              const SizedBox(height: USizes.spaceBtwSections),
              Container(
                width: double.infinity,
                color: UColors.white,
                padding: UPadding.screenPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SocialSignInButtons(
                      onApplePressed: () {},
                      onGooglePressed: () {},
                    ),
                    SignInFormContent(
                      onForgotPasswordPressed: () => Get.to(() => const ForgetPasswordScreen()),
                      onSignInPressed: () {},
                      onSignUpPressed: () => Get.to(() => const SignUpScreen()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

