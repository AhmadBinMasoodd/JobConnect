import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/buttons/custom_action_button.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';

class PendingFooterActions extends StatelessWidget {
  const PendingFooterActions({super.key, this.onProceed});

  final VoidCallback? onProceed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomActionButton(
          text: UText.proceedToDashboard,
          onPressed: onProceed ?? () {},
          backgroundColor: UColors.primaryColor,
        ),
        const SizedBox(height: USizes.sm),
        Text(
          UText.pendingFooterMessage,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: UColors.gray,
            fontFamily: 'Arimo',
          ),
        ),
      ],
    );
  }
}
