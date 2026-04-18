import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';

class DashboardSectionTitle extends StatelessWidget {
  const DashboardSectionTitle({
    super.key,
    required this.title,
    this.actionText,
    this.onActionTap,
  });

  final String title;
  final String? actionText;
  final VoidCallback? onActionTap;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          TextButton(
            onPressed: onActionTap ?? () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              foregroundColor: UColors.primaryColor,
            ),
            child: Text(
              actionText!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: UColors.primaryColor,
                fontFamily: 'Arimo',
              ),
            ),
          ),
      ],
    );
  }
}
