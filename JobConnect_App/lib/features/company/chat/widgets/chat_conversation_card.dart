import 'package:flutter/material.dart';

import '../../../../core/constant/app_gradient.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';

class ChatConversationCard extends StatelessWidget {
  const ChatConversationCard({
    super.key,
    required this.name,
    required this.lastMessage,
    required this.timeText,
    this.avatarText,
    this.avatarIcon,
    this.unreadCount = 0,
    this.isOnline = false,
  });

  final String name;
  final String lastMessage;
  final String timeText;
  final String? avatarText;
  final IconData? avatarIcon;
  final int unreadCount;
  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(USizes.md),
      decoration: BoxDecoration(
        color: UColors.white,
        borderRadius: BorderRadius.circular(USizes.cardRadiusLg),
        boxShadow: [
          BoxShadow(
            color: UColors.black.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 56,
                height: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: UAppGradient.secondaryGradient,
                  borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
                ),
                child: avatarIcon != null
                    ? Icon(
                        avatarIcon,
                        color: UColors.primaryColor,
                        size: USizes.iconMd,
                      )
                    : Text(
                        avatarText ?? '',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: UColors.primaryColor,
                              fontFamily: 'Arimo',
                              fontWeight: FontWeight.w700,
                            ),
                      ),
              ),
              if (isOnline)
                Positioned(
                  right: -2,
                  bottom: -2,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: UColors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: UColors.white, width: 2),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: USizes.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: UColors.primaryColor,
                        fontFamily: 'Arimo',
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: USizes.xs),
                Text(
                  lastMessage,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: UColors.mutedTextColor,
                        fontFamily: 'Arimo',
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(width: USizes.sm),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                timeText,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: UColors.gray,
                      fontFamily: 'Arimo',
                    ),
              ),
              const SizedBox(height: USizes.md),
              if (unreadCount > 0)
                Container(
                  width: 26,
                  height: 26,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: UColors.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    unreadCount.toString(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: UColors.white,
                          fontFamily: 'Arimo',
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}


