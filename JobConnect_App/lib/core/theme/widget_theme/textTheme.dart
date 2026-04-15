import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../constant/size.dart';

class UTextTheme {
  UTextTheme._();
	static TextTheme lightTextTheme = TextTheme(
		headlineLarge: TextStyle().copyWith(fontSize: 32.0,  fontWeight: FontWeight.w800, color: UColors.white),
		headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: UColors.white),
		headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: UColors.white),

		titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: UColors.white),
		titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: UColors.white),
		titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: UColors.white),

		bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: UColors.white),
		bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: UColors.white),
		bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: UColors.white.withValues(alpha: 0.5)),

		labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: UColors.white),
		labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: UColors.white.withValues(alpha: 0.5)),
	);
}

