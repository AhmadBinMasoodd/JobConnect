import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.title
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
        color: UColors.white,
        fontFamily: 'Arimo'
      ),
    );
  }
}
