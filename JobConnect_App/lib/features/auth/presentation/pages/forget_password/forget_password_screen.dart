import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/icons/GradientIconBox.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/common/widgets/layout/auth_reset_layout.dart';
import 'package:jobconnect_app/features/auth/presentation/pages/forget_password/widgets/forget_password_container.dart';

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
        child: ForgetPasswordContainer(),
      ),
    );
  }
}

