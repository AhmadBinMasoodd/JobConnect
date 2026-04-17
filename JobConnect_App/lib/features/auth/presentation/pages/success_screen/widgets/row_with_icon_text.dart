import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../../core/constant/colors.dart';
import '../../../../../../core/constant/size.dart';
import '../../../../../../core/constant/text.dart';


class RowWithIconText extends StatelessWidget {
  const RowWithIconText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 2),
          child: Icon(
            Iconsax.shield_tick,
            color: UColors.primaryColor,
            size: USizes.iconSm,
          ),
        ),
        const SizedBox(width: USizes.sm),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                UText.accountNowSecure,
                style: Theme.of(context).textTheme.bodyMedium
                    ?.copyWith(
                  fontFamily: 'Arimo',
                  color: UColors.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: USizes.xs),
              Text(
                UText.pleaseRememberToKeepItSafe,
                style: Theme.of(context).textTheme.bodySmall
                    ?.copyWith(
                  fontFamily: 'Arimo',
                  color: UColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
