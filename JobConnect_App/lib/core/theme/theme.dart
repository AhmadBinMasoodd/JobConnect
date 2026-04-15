import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/theme/widget_theme/appbar_theme.dart';
import 'package:jobconnect_app/core/theme/widget_theme/elevated_button_theme.dart';
import 'package:jobconnect_app/core/theme/widget_theme/outline_button_theme.dart';
import 'package:jobconnect_app/core/theme/widget_theme/text_field_theme.dart';
import 'package:jobconnect_app/core/theme/widget_theme/textTheme.dart';


class UAppTheme {
  UAppTheme._();

  static final ThemeData lightTheme = ThemeData(
	useMaterial3: true,
	fontFamily: 'Arimo',
	brightness: Brightness.light,
	scaffoldBackgroundColor: UColors.white,
	primaryColor: UColors.primaryColor,
	disabledColor: UColors.lightGray,
	textTheme: UTextTheme.lightTextTheme,
	colorScheme: const ColorScheme.light(
	  primary: UColors.primaryColor,
	  secondary: UColors.secondaryColor,
	  surface: UColors.white,
	  error: UColors.error,
	  onPrimary: UColors.white,
	  onSecondary: UColors.black,
	  onSurface: UColors.black,
	  onError: UColors.white,
	),
	appBarTheme: UAppBarTheme.lightAppBarTheme,
	elevatedButtonTheme: UElevatedButtonTheme.lightElevatedButtonTheme,
	outlinedButtonTheme: UOutlineButtonTheme.lightOutlineButtonTheme,
	inputDecorationTheme: UTextFormFieldTheme.inputDecorationTheme,
  );
}

