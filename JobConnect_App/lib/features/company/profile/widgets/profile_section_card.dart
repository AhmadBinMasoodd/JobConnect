import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class ProfileSectionCard extends StatelessWidget {
  const ProfileSectionCard({
    super.key,
    required this.title,
    required this.child,
    this.actionText,
    this.onActionTap,
  });

  final String title;
  final String? actionText;
  final VoidCallback? onActionTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(USizes.md),
      decoration: BoxDecoration(
        color: UColors.white,
        borderRadius: BorderRadius.circular(USizes.cardRadiusLg),
        boxShadow: const [
          BoxShadow(
            color: UColors.profileCardShadow,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: UColors.primaryColor,
                        fontFamily: 'Arimo',
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              if (actionText != null)
                InkWell(
                  onTap: onActionTap,
                  child: Text(
                    actionText!,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: UColors.primaryColor,
                          fontFamily: 'Arimo',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: USizes.sm),
          child,
        ],
      ),
    );
  }
}

