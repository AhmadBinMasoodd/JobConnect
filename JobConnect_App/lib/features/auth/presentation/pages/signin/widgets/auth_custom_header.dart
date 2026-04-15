import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class AuthCustomHeader extends StatelessWidget {
  const AuthCustomHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: UAppGradient.primaryGradient,
      ),
      child: Center(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: UColors.white,
                      fontFamily: 'Arimo',
                    ),
              ),
              const SizedBox(height: USizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: UColors.white,
                      fontFamily: 'Arimo',
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

