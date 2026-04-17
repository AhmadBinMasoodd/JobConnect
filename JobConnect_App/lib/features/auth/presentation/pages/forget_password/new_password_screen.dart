import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/layout/title_with_icon.dart';
import 'package:jobconnect_app/features/auth/presentation/pages/forget_password/widgets/new_password_container.dart';

import '../../../../../common/widgets/icons/GradientIconBox.dart';
import '../../../../../core/constant/app_gradient.dart';
import '../../../../../core/constant/colors.dart';
import '../../../../../core/constant/size.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true),
      body: TitleWithIcon(
        title: 'New Password',
        icon: UGradientIconBox(
          size: USizes.iconSm * 4,
          icon: Icon(
            Iconsax.lock,
            color: UColors.primaryColor,
            size: USizes.iconMd,
          ),
          gradient: UAppGradient.secondaryGradient,
        ),
        titleText: 'Create New Password',
        subtitleText: 'Your new password must be different from the previous used password.',
        child: NewPasswordContainer(),
      ),
    );
  }
}

