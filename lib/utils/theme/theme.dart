import 'package:flutter/material.dart';
import 'package:mr_orange_store/utils/theme/widget_themes/appbar_theme.dart';
import 'package:mr_orange_store/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:mr_orange_store/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:mr_orange_store/utils/theme/widget_themes/chip_theme.dart';
import 'package:mr_orange_store/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:mr_orange_store/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:mr_orange_store/utils/theme/widget_themes/text_field_theme.dart';
import 'package:mr_orange_store/utils/theme/widget_themes/text_theme.dart';
import '../constants/colors.dart';

class OAppTheme {
  OAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.grey,
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    textTheme: OTextTheme.lightTextTheme,
    chipTheme: OChipTheme.lightChipTheme,
    scaffoldBackgroundColor: TColors.white,
    appBarTheme: OAppBarTheme.lightAppBarTheme,
    checkboxTheme: OCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: OBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: OElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: OTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.grey,
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    textTheme: OTextTheme.darkTextTheme,
    chipTheme: OChipTheme.darkChipTheme,
    scaffoldBackgroundColor: TColors.black,
    appBarTheme: OAppBarTheme.darkAppBarTheme,
    checkboxTheme: OCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: OBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: OElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: OTextFormFieldTheme.darkInputDecorationTheme,
  );
}
