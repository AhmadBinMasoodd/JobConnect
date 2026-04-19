import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/cards/shadow_box.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class DashboardQuickActionCard extends StatelessWidget {
  const DashboardQuickActionCard({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
        child: ShadowBox(
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
        ),
      ),
    );
  }
}
