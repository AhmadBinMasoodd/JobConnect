import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/custom_title_bar.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class AuthResetLayout extends StatelessWidget {
  const AuthResetLayout({
    super.key,
    required this.title,
    required this.icon,
    required this.titleText,
    required this.subtitleText,
    required this.child,
    this.iconSpacing = USizes.spaceBtwItems,
    this.sectionSpacing = USizes.spaceBtwSections,
  });

  final String title;
  final Widget icon;
  final String titleText;
  final String subtitleText;
  final Widget child;
  final double iconSpacing;
  final double sectionSpacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Page title for the auth flow.
        CustomTitleBar(title: title),
        Expanded(
          child: Padding(
            padding: UPadding.screenPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                SizedBox(height: iconSpacing),
                // Main reset heading and supporting copy.
                Text(
                  titleText,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontFamily: 'Arimo',
                        color: UColors.primaryColor,
                      ),
                ),
                Text(
                  subtitleText,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontFamily: 'Arimo',
                        color: UColors.mutedTextColor,
                      ),
                ),
                SizedBox(height: sectionSpacing),
                // Caller provides the container/content for the reset action area.
                child,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
