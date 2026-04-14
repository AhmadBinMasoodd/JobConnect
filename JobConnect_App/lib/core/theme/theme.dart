import 'package:flutter/material.dart';

import '../constant/colors.dart';

class UAppTheme {
  UAppTheme._();

  static final ThemeData lightTheme = ThemeData(
	useMaterial3: true,
	scaffoldBackgroundColor: Colors.white,
	colorScheme: const ColorScheme.light(
	  primary: UColors.primaryColor,
	  secondary: UColors.primaryColorDark,
	  surface: Colors.white,
	  onPrimary: Colors.white,
	  onSecondary: Colors.white,
	  onSurface: Colors.black,
	  error: Colors.red,
	  onError: Colors.white,
	),
	appBarTheme: const AppBarTheme(
	  centerTitle: true,
	  backgroundColor: UColors.primaryColor,
	  foregroundColor: UColors.white,
	  elevation: 0,
	  surfaceTintColor: Colors.transparent,
	),
	elevatedButtonTheme: ElevatedButtonThemeData(
	  style: ElevatedButton.styleFrom(
		backgroundColor: UColors.primaryColor,
		foregroundColor: Colors.white,
		shape: RoundedRectangleBorder(
		  borderRadius: BorderRadius.circular(12),
		),
		padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
	  ),
	),
	floatingActionButtonTheme: const FloatingActionButtonThemeData(
	  backgroundColor: UColors.primaryColor,
	  foregroundColor: Colors.white,
	),
	inputDecorationTheme: InputDecorationTheme(
	  filled: true,
	  fillColor: Colors.white,
	  contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
	  border: OutlineInputBorder(
		borderRadius: BorderRadius.circular(12),
		borderSide: const BorderSide(color: UColors.primaryColorDark),
	  ),
	  enabledBorder: OutlineInputBorder(
		borderRadius: BorderRadius.circular(12),
		borderSide: const BorderSide(color: UColors.primaryColorDark),
	  ),
	  focusedBorder: OutlineInputBorder(
		borderRadius: BorderRadius.circular(12),
		borderSide: const BorderSide(color: UColors.primaryColor, width: 1.4),
	  ),
	),
  );
}

