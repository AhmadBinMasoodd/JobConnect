import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/icons/GradientIconBox.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/features/auth/presentation/pages/success_screen/widgets/success_container.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: false,
        title: Text(
          'Success',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: UColors.white,
            fontFamily: 'Arimo',
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UGradientIconBox(
                size: USizes.iconLg * 2,
                radius: 50,
                color: UColors.success,
                icon: Icon(
                  Iconsax.tick_circle,
                  size: USizes.iconLg,
                  color: UColors.green,
                ),
              ),
              const SizedBox(height: USizes.spaceBtwItems),
              Text(
                UText.passwordResetSuccessTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontFamily: 'Arimo',
                  color: UColors.primaryColor,
                ),
              ),
              Text(
                UText.passwordResetSuccessSubtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontFamily: 'Arimo',
                  color: UColors.mutedTextColor,
                ),
              ),
              const SizedBox(height: USizes.spaceBtwSections),

              ///Success Container with sign in button
              SuccessContainer(),

            ],
          ),
        ),
      ),
    );
  }
}

