import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/cards/shadow_box.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class DashboardQuickActionCard extends StatelessWidget {
  const DashboardQuickActionCard({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ShadowBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              color: UColors.lightGray.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(USizes.cardRadiusSm),
            ),
            child: Icon(icon, color: UColors.primaryColor, size: USizes.iconSm),
          ),
          const SizedBox(height: USizes.sm),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: UColors.primaryColor,
              fontFamily: 'Arimo',
            ),
          ),
        ],
      ),
    );
  }
}
