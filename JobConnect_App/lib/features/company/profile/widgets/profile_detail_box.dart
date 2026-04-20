import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class ProfileDetailBox extends StatelessWidget {
  const ProfileDetailBox({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(USizes.sm),
      decoration: BoxDecoration(
        color: UColors.lightGray.withValues(alpha: 0.35),
        borderRadius: BorderRadius.circular(USizes.cardRadiusSm),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Icon(
              icon,
              size: USizes.iconSm,
              color: UColors.primaryColor,
            ),
          ),
          const SizedBox(width: USizes.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: UColors.gray,
                        fontFamily: 'Arimo',
                      ),
                ),
                const SizedBox(height: USizes.xs),
                Text(
                  value,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: UColors.primaryColor,
                        fontFamily: 'Arimo',
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

