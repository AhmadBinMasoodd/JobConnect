import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';

class PendingNextStepsCard extends StatelessWidget {
  const PendingNextStepsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(USizes.lg),
      decoration: BoxDecoration(
        gradient: UAppGradient.secondaryGradient,
        borderRadius: BorderRadius.circular(USizes.cardRadiusLg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _NextStepTitle(),
          SizedBox(height: USizes.md),
          _NumberStepRow(index: 1, text: UText.whatHappensNextStepOne),
          SizedBox(height: USizes.sm),
          _NumberStepRow(index: 2, text: UText.whatHappensNextStepTwo),
          SizedBox(height: USizes.sm),
          _NumberStepRow(index: 3, text: UText.whatHappensNextStepThree),
        ],
      ),
    );
  }
}

class _NextStepTitle extends StatelessWidget {
  const _NextStepTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      UText.whatHappensNextTitle,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
        color: UColors.primaryColor,
        fontFamily: 'Arimo',
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _NumberStepRow extends StatelessWidget {
  const _NumberStepRow({required this.index, required this.text});

  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 24,
          height: 24,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: UColors.primaryColor,
            shape: BoxShape.circle,
          ),
          child: Text(
            '$index',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: UColors.white,
              fontFamily: 'Arimo',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(width: USizes.md),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: UColors.primaryColor,
              fontFamily: 'Arimo',
            ),
          ),
        ),
      ],
    );
  }
}
