import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class UTextTheme {
  UTextTheme._();
	static TextTheme lightTextTheme = TextTheme(
		headlineLarge: TextStyle().copyWith(fontSize: 32.0,  fontWeight: FontWeight.w800, color: UColors.primaryColor),
		headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: UColors.primaryColor),
		headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: UColors.primaryColor),

		titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: UColors.primaryColor),
		titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: UColors.primaryColor),
		titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: UColors.primaryColor),

		bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: UColors.primaryColor),
		bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: UColors.primaryColor),
		bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: UColors.primaryColor.withValues(alpha: 0.5)),

		labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: UColors.primaryColor),
		labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: UColors.primaryColor.withValues(alpha: 0.5)),
	);
}

