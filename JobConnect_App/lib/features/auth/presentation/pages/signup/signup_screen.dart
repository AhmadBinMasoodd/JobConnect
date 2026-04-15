import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/features/auth/presentation/pages/signin/widgets/auth_custom_header.dart';

import 'widgets/signup_form_content.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UAppBar(showBackArrow: true),
      body: Container(
        height: double.infinity,
        color: UColors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AuthCustomHeader(
                title: UText.signUpTitle,
                subtitle: UText.signUnSubtitle,
              ),
              const SizedBox(height: USizes.spaceBtwSections),
              Container(
                width: double.infinity,
                color: UColors.white,
                padding: UPadding.screenPadding,
                child: SignUpFormContent(
                  onCreateAccountPressed: () {},
                  onSignInPressed: () => Get.back(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

